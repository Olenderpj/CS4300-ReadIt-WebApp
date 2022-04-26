class TagsController < ApplicationController
    def remove
        @book = Book.find(params[:book_id])
        @tag = Tag.find(params[:id])
        @book.tags.destroy(@tag)
        head :ok
        
        
        
    end
end
