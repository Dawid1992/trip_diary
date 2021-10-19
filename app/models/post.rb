class Post < ApplicationRecord
    belongs_to :user
    validates :city, presence: true
    validates :note, presence: true
    validates :temperature, presence: true
  
    def date
      created_at.strftime('%d-%m-%Y')
    end
  end
