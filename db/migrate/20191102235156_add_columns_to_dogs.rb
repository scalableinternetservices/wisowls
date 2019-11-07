class AddColumnsToDogs < ActiveRecord::Migration[6.0]
  def change
    add_column :dogs, :affectionate, :boolean
    add_column :dogs, :cuddly, :boolean
    add_column :dogs, :intelligent, :boolean
    add_column :dogs, :curious, :boolean
    add_column :dogs, :sassy, :boolean
    add_column :dogs, :likes_soul_mate, :boolean
    add_column :dogs, :likes_younger_dogs, :boolean
  end
end
