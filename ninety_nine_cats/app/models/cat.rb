class Cat < ApplicationRecord
  COLORS = %w(yellow brown black white orage purple tie-dye rainbow clear)

  validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :color, inclusion: { in: COLORS}
  validates :name, uniqueness: true 
  
  has_many :cat_rental_requests


  def calculate_age 
    Time.now.year - self.birth_date.year 
  end
     

end
