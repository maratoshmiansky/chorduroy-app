class CreateChords < ActiveRecord::Migration[6.1]
  def change
    create_table :chords do |t|
      t.string :name
      t.string :image
      t.string :root
      t.string :alteration
      t.string :quality
      t.string :option

      t.timestamps
    end
  end
end
