# frozen_string_literal: true

class Request311 < ApplicationRecord
  belongs_to :service_names, :service_areas

  validates :service_name, :service_area, presence: true
  validates :ward, :neighborhood
end
