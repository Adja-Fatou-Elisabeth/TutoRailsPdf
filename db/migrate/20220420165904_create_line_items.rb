class CreateLineItems < ActiveRecord::Migration[6.1]
  def change
    create_table :line_items do |t|
      t.string :description
      t.float :price
      t.references :invoice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
