class AddImageToFaculties < ActiveRecord::Migration[5.2]
  def change
    add_column :faculties, :image, :string
  end
end
