class DataController < ActionController::Base
  def convert
    data = JData.process(params[:data])
    render json: data, status: :ok
  end
end
