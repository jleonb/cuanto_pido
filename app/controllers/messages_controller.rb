class MessagesController < ApplicationController

  def index
    @products = Product.all

    if params[:category] == nil
      @products = Product.all
    else
      @products = Product.where(category: params[:category].titleize)
    end
    #alphabetical
    @my_categoryes = Product.select(:category).order(:category).distinct

  end

  def new
    @message = Message.new

    @products = Product.all

    if params[:category] == nil
      @products = Product.all
    else
      @products = Product.where(category: params[:category].titleize)
    end
    #alphabetical
    @my_categoryes = Product.select(:category).order(:category).distinct

  end

  def create
    @message = Message.new(message_params)

    if @message.valid?
      MessageMailer.new_message(@message).deliver
      redirect_to root_path, notice: "Your messages has been sent."
    else
      flash[:alert] = "An error occurred while delivering this message."
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :content)
  end

end