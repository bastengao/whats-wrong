class WhatsWrong::ExceptionsController < ApplicationController

  def show
    exception  = env['action_dispatch.exception']
    path_info = request.path_info
    status = path_info[1..-1].to_i
    original_path = env["action_dispatch.original_path"]
    render plain: "status: #{status}, origin_path: #{original_path}"
  end

end
