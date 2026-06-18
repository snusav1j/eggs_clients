class Client < ApplicationRecord
  has_many :interactions, dependent: :destroy
  has_many :orders, dependent: :destroy

  belongs_to :manager, class_name: 'User', foreign_key: :manager_id, optional: true

end