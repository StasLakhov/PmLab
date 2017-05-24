class Customer < ApplicationRecord

  has_many :projects, dependent: :nullify

end
