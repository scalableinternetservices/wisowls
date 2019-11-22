class AddZipCodeToDogs < ActiveRecord::Migration[6.0]
  def change
    add_column :dogs, :zipcode, :integer
  end
end
