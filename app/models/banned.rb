class Banned < ApplicationRecord

  belongs_to :check

  validates :email, presence: true
  validates :msg, presence: true

  validates_uniqueness_of :email



end
