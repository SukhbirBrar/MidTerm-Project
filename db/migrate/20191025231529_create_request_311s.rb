class CreateRequest311s < ActiveRecord::Migration[6.0]
  def change
    create_table :request_311s do |t|
      t.string :ward
      t.string :neighbourhood
      t.references :service_name, null: false, foreign_key: true
      t.references :service_area, null: false, foreign_key: true

      t.timestamps
    end
  end
end
