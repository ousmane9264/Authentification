class Category < ApplicationRecord
    include ImageUploader::Attachment.new(:image)
    
    validates :name, presence: {message: 'Ne doit pas etre vide'}   
    validates :content, presence:{message: 'Ne doit pas etre vide'} 
    validates :date, presence:{message: 'Ne doit pas etre vide'} 
end
