class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :Author
      t.string :description
      t.string :url
      t.string :cover_img

      t.timestamps
    end
  end
end
