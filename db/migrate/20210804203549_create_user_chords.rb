class CreateUserChords < ActiveRecord::Migration[6.1]
  def change
    create_table :user_chords do |t|
      t.integer :user_id
      t.integer :chord_id
      t.string :catalog

      t.timestamps
    end
  end
end
