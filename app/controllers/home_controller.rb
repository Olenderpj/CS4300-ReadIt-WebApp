class HomeController < ApplicationController
  def index
    #@books = Book.all
    #@counts = @Books.count
    filter_books_by_user_id
    puts("DEBUG: counts=" + @counts.to_s())
    @order_option = Book.order_options

    @avTags = []
    Tag.all.each do |t|
      @avTags<<t[:name]
    end
    gon.tagName = @avTags
    

    if (params[:commit] == 'Sort')
      case params[:option_id]
      when '1'
        @books = @books.order(:author) 
        session[:option_id] = '1'
      when '2'
        @books = @books.order(:genre) 
        session[:option_id] = '2'

      when '3'
        @books = @books.order(:created_at) 
        session[:option_id] = '3'
      end
    end
  end

  def search
    @avTags = []
    Tag.all.each do |t|
      @avTags<<t[:name]
    end
    gon.tagName = @avTags

    @tags = []
    #params[:searchtag].each.split do |s|
      #@tags << Tag.find_by_name(s.downcase)
    #end
    parameterTag = params[:searchtag][0]
    tags = parameterTag.strip.split(/\s+/)
    tags.each do |s|
      @tags << Tag.find_by_name(s.downcase)
    end

    @bookss = []

    if @tags[0] != nil
      @tags.each do |t|
        for i in 0..(t.books.length-1)
          if !(@bookss.include? t.books[i])
            @bookss<<t.books[i]
          end
        end
      end
    end

    if !(params[:searchtag][0].strip.split(/\s+/).blank?) and @bookss.length == 0
      flash.alert = "Tags Not found!"
    elsif params[:searchtag][0].strip.split(/\s+/).blank?
      flash.alert = "Enter tags to search books by tags"
    end

    

    if @bookss.length != 0
      flash.alert = "Tags found!"
    end

    
    if params[:searchtag].present? and !(@tags.all? {|x| x.nil?}) and @bookss.length != 0
    
      
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
      #@books = Book.all
      #@counts = Book.count
      filter_books_by_user_id
    end
    render 'home/index'
  end

  def alread
    filter_books_by_user_id
    @bookList = @books
    #@bookList = Book.all
    @books = []

    @bookList.each do |t|
      if t[:isRead]
        @books<<t
      end
      
    end

    if @books.empty?
      flash.alert = "No books to show!"
    end
    
    @avTags = []
    Tag.all.each do |t|
      @avTags<<t[:name]
    end
    gon.tagName = @avTags
    @counts = @books.length

    render 'home/index'
    #render 'book/listview'
  end

  def willread
    filter_books_by_user_id
    @bookList = @books
    #@bookList = Book.all
    @books = []

    @bookList.each do |t|
      if t[:isInReadingList]
        @books<<t
      end
    end

    if @books.empty?
      flash.alert = "No books in reading list!"
    end
    
    @avTags = []
    Tag.all.each do |t|
      @avTags<<t[:name]
    end
    gon.tagName = @avTags

    @counts = @books.length
    
    #render 'book/listview'
    render 'home/index'
  end

  def filter_books_by_user_id
    #@books = Book.all
    #@counts = @Books.count
    if user_signed_in?
      puts("DEBUG: in HomeController index user is signed in. Current_user.id=" + current_user.id.to_s())
      @books = Book.filter_by_user_id(current_user.id)
      @counts = Book.filter_by_user_id(current_user.id).count
    else
      puts("DEBUG: in HomeController index user is NOT signed in. user book.user_id=1 for books to display when not logged in") #tried book.user_id=0, but it didn't like id=0
      @books = Book.filter_by_user_id(1)
      @counts = Book.filter_by_user_id(1).count
    end
  end
  
end