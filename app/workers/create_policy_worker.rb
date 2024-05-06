require 'bunny'

class CreatePolicyWorker
  include Sneakers::Worker

  from_queue 'create_policy'

  def work(msg)
    policy = parser_message(msg)

    ActiveRecord::Base.transaction do
      vehicle = Vehicle.create!(
        license_plate: policy[:vehicle][:license_plate],
        brand: policy[:vehicle][:brand],
        model: policy[:vehicle][:model],
        year: policy[:vehicle][:year],
      )
      insured = Insured.create!(
        name: policy[:insured][:name],
        cpf: policy[:insured][:cpf]
      )
      Policy.create!(
        date_issue: policy[:date_issue].to_datetime,
        policy_expiration: policy[:policy_expiration].to_datetime,
        insured: insured,
        vehicle: vehicle
      )
    end

    puts "Create Policy, Vehicle and Insured successfully!!"
    ack!
  rescue ActiveRecord::RecordInvalid => error
    puts "Error to create Policy, Vehicle or Insured: #{error.message}"

    # nack!
  end

  private

  def parser_message(msg)
    JSON.parse(msg, symbolize_names: true)
  end
end
