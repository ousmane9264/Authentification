class Category < ApplicationRecord
    include ImageUploader::Attachment.new(:image)
    
    validates :name, presence: {message: 'ne doit pas etre vide'}
                
    validates :content, presence:{message: 'ne doit pas etre vide'}
    validates :date, presence:true

end
