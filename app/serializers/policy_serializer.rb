class PolicySerializer < BaseSerializer
  def initialize(policy)
    @policy = policy
  end

  private

  attr_reader :policy

  def object_serialized
    {
      "id": policy.id,
      "date_issue": format_date(policy.date_issue),
      "policy_expiration": format_date(policy.policy_expiration),
      "status": policy.status,
      "insured": {
        "id": policy.insured_id,
        "name": policy.insured.name,
        "cpf": policy.insured.cpf,
      },
      "vehicle": {
        "id": policy.vehicle_id,
        "license_plate": policy.vehicle.license_plate,
        "brand": policy.vehicle.brand,
        "model": policy.vehicle.model,
        "year": policy.vehicle.year,
      },
      "charge": {
        "id": policy.charge_id,
        "payment_id": policy.charge.payment_id,
        "payment_link": policy.charge.payment_link
      }
    }
  end
end
