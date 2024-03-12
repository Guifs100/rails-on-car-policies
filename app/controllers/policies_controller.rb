class PoliciesController < ApplicationController

  def index
    policies = Policy.all
    render json: PoliciesSerializer.new(policies).serialized
  end
end
