class CreateKatalogs < ActiveRecord::Migration[5.0]
  def change
    create_table :katalogs do |t|
      t.string :nazwa
      t.string :opis
      t.string :url

      t.timestamps
    end
  end
end
