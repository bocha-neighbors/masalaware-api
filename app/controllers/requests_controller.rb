class RequestsController < ApplicationController
  def new
  @request = Request.new
  end

  def create
  @request = Request.new(request_params)
    if @request.save
    flash[:success] = "Thanks, we'll check it out!"
    render 'new'
    else
    flash[:danger] = "Please try to submit your request again."
    render 'new'
    end
  end

  def update
    @request = Request.find_by(params[:id])
    if @request.update_attributes(request_params)
      flash[:success] = "Your request has been updated."
      render 'update'
    else
      flash[:danger] = "Your request could not be submitted."
      render 'update'
    end
  end

  def delete
    @request = Request.find_by(params[:id])
    @request.destroy
      flash[:success] = "Your request has been deleted."
  end

  def index
    @requests = Request.all
    render :json => @requests
  end

  def request_params
    params.require(:request).permit(:urgency_scale, :location, :category, :description, :actions_attempted)
  end
end
