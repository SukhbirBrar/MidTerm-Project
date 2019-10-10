class CreateRequest311s < ActiveRecord::Migration[6.0]
  def change
    create_table :request_311s do |t|
      t.string :service_name
      t.string :service_area
      t.string :ward
      t.string :neighborhood

      t.timestamps
    end
  end
end
