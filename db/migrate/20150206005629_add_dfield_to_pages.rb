class AddDfieldToPages < ActiveRecord::Migration
  def change
    add_column :pages, :d, :integer
  end
end
