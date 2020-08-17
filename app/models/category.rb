class Category < ApplicationRecord

    validates :name, presence: {message: 'ne doit pas etre vide'}
                
    validates :content, presence:{message: 'ne doit pas etre vide'}

end
