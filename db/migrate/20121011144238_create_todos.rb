# require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateTodos < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :tasks do |s|
      s.string :what_to do
      s.timestamps null: false
    end
  end
end
# endrake