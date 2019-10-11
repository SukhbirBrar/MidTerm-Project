class ServiceName < ApplicationRecord

  has_many :request_311s
  validates :id, :service_name, presence: true
end
