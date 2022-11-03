class Product < ApplicationRecord
    audited
    has_many :line_items

    validates :title,:description, :price, presence:true
    validates :price , numericality: { greater_than_or_equal_to: 0.0 }
    validates :title , uniqueness: true
    
    before_destroy :ensure_not_referenced_by_any_item

    private

    def ensure_not_referenced_by_any_item
        unless line_items.empty?
            errors.add(:base, 'No se puede eliminar por que tiene line items.')
            throw :abort
        end
    end
end
