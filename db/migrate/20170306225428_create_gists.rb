class CreateGists < ActiveRecord::Migration[5.0]
  def change
    create_table :gists do |t|
      t.text :src
      t.string :lang
      t.string :desc

      t.timestamps
    end
  end
end
