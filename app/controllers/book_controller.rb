class BookController < ApplicationController  
  
  layout 'application'

  def index
    @book = Book.all 
  end

  def new
    @book = Book.new
    @isInReadingList = true # default to true for the quickest entry of a book
  end

  def books_params
    params.require(:books).permit(:title, :description, :author, :isInReadingList,:genre, :tag_names)
  end
    
  def create
    @book = Book.new(books_params)
    
    if @book.save 
      redirect_to '/'
    else
      render.html :action => 'new'
    end
  end
    
  def edit
    @book = Book.find(params[:id])
  end
    
  def books_param
    params.require(:books).permit(:title, :description, :author, :isInReadingList)
  end
    
  def update
    @book = Book.find(params[:id])
  
    if @book.update_attributes(book_param)
      redirect_to :action => 'show', :id => @book 
    else
      render.html :action => 'edit'
    end
  end
    
  def show
    @book = Book.find(params[:id])
  end

  def search
    if params[:search].present?
      @books = @books.search(params[:search])
    else
      @books = @books
    end
  end
  
end
  