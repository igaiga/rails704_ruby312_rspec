class CreateVariations < ActiveRecord::Migration[7.0]
  def change
    create_table :variations do |t|
      t.string :kind
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
