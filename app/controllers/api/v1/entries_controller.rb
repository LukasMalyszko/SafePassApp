class Api::V1::EntriesController < Api::V1::ApiBaseController
  # before_action :set_entry, only: [:show, :update, :destroy]

  def index
    render json: current_user.entries
  end
end
