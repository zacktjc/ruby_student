class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :lastname
      t.string :gender
      t.integer :age
      t.string :email
      t.integer :phone_number

      t.timestamps
    end
  end
end
