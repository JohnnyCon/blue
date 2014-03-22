class Member < ActiveRecord::Base
  belongs_to :company

  validates :name, presence: true
  validates :title, presence: true
  validates :title, length: { in: 1..20 }

  
end
