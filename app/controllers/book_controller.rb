class BookController < ApplicationController  
  
  layout 'application'

  def index
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
    params.require(:books).permit(:title, :description, :author, :isInReadingList, :isInPersonalLibraryList, :genre, :tag_names, :totalPage, :readPage, :image)
  end
    
  def create
    @book = Book.new(books_params)
    
    # Make this if/else code prettier in the refactor sprint
    # Might not need this now that I disabled the Add New Book
    # button unless logged in
    if (current_user == nil)
      tmp_id = 0
    else
      tmp_id = current_user.id
    end
    puts("DEBUG: in book create. Current_user.id=" + tmp_id.to_s())
    @book.user_id = tmp_id

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
    params.require(:book).permit(:title, :description, :author, :isInReadingList, :isInPersonalLibraryList, :genre, :tag_names, :totalPage, :readPage, :image)
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
  