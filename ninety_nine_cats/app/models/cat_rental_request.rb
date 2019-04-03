class CatRentalRequest < ApplicationRecord
  validates :status, inclusion: { in: ['APPROVED', 'DENIED', 'PENDING']}
  validates :cat_id, :start_date, :end_date, :status, presence: true

  belongs_to :cat

  
end
