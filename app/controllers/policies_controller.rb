class PoliciesController < ApplicationController

  def index
    limit = params.fetch(:limit, nil)
    policies = Policy.all.limit(limit)
    render json: PoliciesSerializer.new(policies).serialized
  end

  def show
    policy = Policy.find_by!(id: params[:id])
    render json: PolicySerializer.new(policy).serialized
  end
end
