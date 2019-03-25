class CreateTranslations < ActiveRecord::Migration[5.2]
  def change
    create_table :translations do |t|
      t.string :source_text
      t.string :output_text
      t.string :output_language
      t.integer :trip_id
      t.timestamps
    end
  end
end
