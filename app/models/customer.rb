class Customer < ApplicationRecord

  has_many :projects, dependent: :nullify
  has_many :coworkers, dependent: :nullify

end
