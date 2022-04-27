class TagsController < ApplicationController

    
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
