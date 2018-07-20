class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :string
      t.string :content
      t.string :text

      t.timestamps
    end
  end
end