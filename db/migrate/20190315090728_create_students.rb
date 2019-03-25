class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.bigint :rollno
      t.string :name
      t.string :branch
      t.string :grade

      t.timestamps
    end
  end
end
