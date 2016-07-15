class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :status, default: false
      # Completa con las columnas que necesites
    end
  end
end
