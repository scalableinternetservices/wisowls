class CreateLikesTables < ActiveRecord::Migration[6.0]
  def change
    create_table :likes_tables do |t|
      t.string :liker
      t.string :liked

      t.timestamps
    end
  end
end
