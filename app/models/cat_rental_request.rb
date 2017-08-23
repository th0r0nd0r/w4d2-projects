class CatRentalRequest < ApplicationRecord
  STATUSES = [
    'PENDING',
    'APPROVED',
    'DENIED'
  ]
  belongs_to :cat,
    primary_key: :id,
    foreign_key: :cat_id,
    class_name: :Cat

  validates :status, inclusion: { in: STATUSES }
  validates :cat_id, :start_date, :end_date, :status, presence: true
end
