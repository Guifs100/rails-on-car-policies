class Policy < ApplicationRecord
  belongs_to :insured
  belongs_to :vehicle

  validates :date_issue, presence: true
  validates :policy_expiration, presence: true
  validates :insured_id, presence: true
  validates :vehicle_id, presence: true
  validate :invalid_dates

  def invalid_dates
    errors.add(:date_issue, 'invalid date') if invalid_date?
  end

  private

  def invalid_date?
    date_issue > policy_expiration
  end
end
