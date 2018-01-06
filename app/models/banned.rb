class Banned < ApplicationRecord

  validates :email, presence: true
  validates :msg, presence: true

  validates_uniqueness_of :email



end
