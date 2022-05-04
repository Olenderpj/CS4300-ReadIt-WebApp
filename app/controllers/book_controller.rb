class BookController < ApplicationController  
  
  layout 'application'

  def index
    puts("DEBUG: in index method of BookController")
    @book = Book.all
    
    @avTags = []
    Tag.all.each do |t|
      @avTags<<t[:name]
    end
    gon.tagName = @avTags
  end

  def new
    @book = Book.new
    @isInReadingList = true # default to true for the quickest entry of a book
    @avTags = []
    Tag.all.each do |t|
      @avTags<<t[:name]
    end
    gon.tagName = @avTags
  end

  def books_params
    params.require(:books).permit(:title, :description, :author, :isRead, :isInReadingList, :isInPersonalLibraryList, :genre, :tag_names, :totalPage, :readPage, :image, :comment)
  end
    
  def create
    @book = Book.new(books_params)
    
    puts("DEBUG: in book create. Current_user if logged in is:" + current_user.to_s())
    user_signed_in? ? @book.user_id = current_user.id : @book.user_id = 1

    if @book.save 
      redirect_to '/'
    else
      render.html :action => 'new'
    end
  end
    
  def edit
    @book = Book.find(params[:id])
    puts("DEBUG: in book edit")
    @avTags = []
    Tag.all.each do |t|
      @avTags<<t[:name]
    end
    gon.tagName = @avTags
  end
  
  def book_param
    params.require(:book).permit(:title, :description, :author, :isRead, :isInReadingList, :isInPersonalLibraryList, :genre, :tag_names, :totalPage, :readPage, :image, :comment)
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
  