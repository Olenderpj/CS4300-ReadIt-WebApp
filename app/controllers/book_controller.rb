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
    params.require(:books).permit(:title, :description, :author, :isInReadingList, :isInPersonalLibraryList, :genre, :tag_names, :totalPage, :readPage)
  end
    
  def create
    @book = Book.new(books_params)
    puts("DEBUG: in book create")
    if @book.save 
      redirect_to '/'
    else
      render.html :action => 'new'
    end
  end
    
  def edit
    @book = Book.find(params[:id])
    puts("DEBUG: in book edit")
  end
  
  def book_param
    params.require(:book).permit(:title, :description, :author, :isInReadingList, :isInPersonalLibraryList, :genre, :tag_names, :totalPage, :readPage)
 end
    
  def update
    @book = Book.find(params[:id])
    puts("DEBUG: in book update")
    if @book.update_attributes(book_param)
      #redirect_to :action => 'show', :id => @book 
      redirect_to '/'
    else
      render.html :action => 'edit'
    end
  end
    
  def show
    @book = Book.find(params[:id])
  end

  def remove
    @book = Book.find(params[:book_id])
    @tag = Tag.find(params[:id])
    @book.tags.destroy(@tag)

    render "book/show"
  end

  def search
    if params[:search].present?
      @books = @books.search(params[:search])
    else
      @books = @books
    end
  end
  
end
  