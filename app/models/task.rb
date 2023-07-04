class Task < ApplicationRecord
    has_many :points


    validates :title, length: { minimum: 3 }, presence: true, uniqueness: true
    
end
