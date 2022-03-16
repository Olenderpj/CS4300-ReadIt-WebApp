class HomeController < ApplicationController
  def index
    @books = Book.all
    @counts = Book.count
    @order_option = Book.order_options

    if (params[:commit] == 'Filter')
      case params[:option_id]
      when '1'
        @books = @books.order(:author) 
        session[:option_id] = '1'
      when '2'
        @books = @books.order(:genre) 
        session[:option_id] = '2'
      end
    end
  end
end
