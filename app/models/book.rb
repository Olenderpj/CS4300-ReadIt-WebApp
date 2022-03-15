class Book < ApplicationRecord
    def self.order_options
        %w(Author Genre)
      end

end
