class CreatePlanetFloras < ActiveRecord::Migration
  def change
    create_table :planet_floras do |t|
      t.references :user, index: true, foreign_key: true
      t.references :planet, index: true, foreign_key: true
      t.references :flora, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
