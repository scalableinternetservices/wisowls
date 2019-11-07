class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :breed
      t.integer :weight
      t.boolean :cat_friendly
      t.boolean :child_friendly
      t.boolean :playful
      t.boolean :barker
      t.boolean :energetic
      t.boolean :calm
      t.boolean :friendly
      t.boolean :likes_small_dogs
      t.boolean :likes_big_dogs
      t.boolean :likes_puppies
      t.boolean :likes_older_dogs

      t.timestamps
    end
  end
end
