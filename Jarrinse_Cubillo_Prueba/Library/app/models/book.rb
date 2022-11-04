class Book < ApplicationRecord
    audited
    
    validates :title, presence: true
end
