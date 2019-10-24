# frozen_string_literal: true

class CreateServiceNames < ActiveRecord::Migration[6.0]
  def change
    create_table :service_names do |t|
      t.string :service_name

      t.timestamps
    end
  end
end
