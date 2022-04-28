class TagsController < ApplicationController

    def index
        @tags = Tag.search(params[:term])
        @avTags = []
        Tag.all.each do |t|
            @avTags<<t[:name]
        end
        gon.tagName = @avTags
        render json: @tags.map(&:name).uniq 
    end

    
    def remove
        #byebug
        @book = Book.find(params[:book_id])
        @tag = Tag.find(params[:id])
        @book.tags.destroy(@tag)
        #byebug
        render @book.tags #, :layout => false
        #head :ok
        
        #respond_to do |format|
            #format.js 
        #end
    end
end
