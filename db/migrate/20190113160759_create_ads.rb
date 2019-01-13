class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.string :title
      t.string :description
      t.string :photo
      t.string :adress
      t.string :tegs
      t.boolean :status

      t.timestamps
    end
  end
end
