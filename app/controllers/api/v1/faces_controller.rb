class Api::V1::FacesController < ApplicationController

  def index
    render json: {}.to_json, status: :ok
  end
  
  def create
    # http_headers = env.select{|h| h =~ /HTTP_/}
    body_string = JSON.parse(request.raw_post)
    # cid = body_string.cid
    logger.debug body_string["cid"]
    # response_string = {
    #   "app_version": body_string["app_version"],
    #   "cid": body_string["cid"],
    #   "seq":body_string["seq"],
    #   "type":10
    # }
    response_string = {}
    render json: response_string.to_json, status: :ok
  end
end