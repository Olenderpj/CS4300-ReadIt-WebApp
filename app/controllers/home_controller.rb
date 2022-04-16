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

  def search
    @tags = []
    params[:searchtag].split.each do |s|
      @tags << Tag.find_by_name(s.downcase)
    end
    if params[:searchtag].present? and !(@tags.all? {|x| x.nil?})
      
      @books = []

      @tags.each do |t|
        for i in 0..(t.books.length-1)
          if !(@books.include? t.books[i])
            @books<<t.books[i]
          end
        end
      end

      #@tags = Tag.find_by_name(params[:searchtag])
      #@books = @tags.books
      @counts = @books.length
      session[:searchtag] = params[:searchtag]
      #@istag = 1
    else
      @books = Book.all
      @counts = Book.count
    end
    render 'home/index'
  end

  
end
