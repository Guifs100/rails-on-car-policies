class PoliciesSerializer < BaseSerializer
  def initialize(policies)
    @policies = policies
  end

  private

  attr_reader :policies

  def object_serialized
    policies.map do |policy|
      {
        "id": policy.id,
        "date_issue": format_date(policy.date_issue),
        "policy_expiration": format_date(policy.policy_expiration),
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
        }
      }
    end
  end
end
