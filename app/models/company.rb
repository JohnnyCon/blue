class Company < ActiveRecord::Base
  has_many :members

  validates :name, presence: true
  validates :name, length: { in: 1..20 }
  validates :industry, presence: true
  validates :industry, length: { in: 1..20 }
  validates :employee_count, presence: true
  validates :employee_count, numericality: { only_integer: true }
  validates :join_date, presence: { message: "is definitely required."}

end
