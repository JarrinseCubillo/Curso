class AddUniquenessToProductTitle < ActiveRecord::Migration[6.1]
  def change
    def change
      add_index(:products, :title, unique:true )
    end
  end
end
