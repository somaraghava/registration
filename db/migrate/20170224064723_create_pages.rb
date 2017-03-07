class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.text :firstname
      t.text :lastname
      t.string :email
      t.text :address
  end
  end
end


