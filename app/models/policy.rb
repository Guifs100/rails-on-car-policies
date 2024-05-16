class Policy < ApplicationRecord
  belongs_to :insured
  belongs_to :vehicle
  belongs_to :charge

  validates :date_issue, presence: true
  validates :policy_expiration, presence: true
  validates :insured_id, presence: true
  validates :vehicle_id, presence: true
  validates :charge_id, presence: true
  validate :invalid_dates

  enum :status, { pending: 0, expired: 5, active: 10 }, default: :pending

  private

  def invalid_dates
    errors.add(:date_issue, 'invalid date') if invalid_date?
  end

  def invalid_date?
    date_issue > policy_expiration
  end
end
