class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :a
      t.integer :b
      t.integer :c

      t.timestamps
    end
  end
end
