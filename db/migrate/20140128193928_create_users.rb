class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :password
      t.date :birthday
      t.string :avatar
      t.boolean :agree

      t.timestamps
    end
  end
end
