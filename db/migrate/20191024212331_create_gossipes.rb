class CreateGossipes < ActiveRecord::Migration[6.0]
  def change
    create_table :gossipes do |t|
			t.string :title
      t.text :content
      t.belongs_to :user, index: true
      t.timestamps

      t.timestamps
    end
  end
end
