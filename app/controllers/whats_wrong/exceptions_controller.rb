class WhatsWrong::ExceptionsController < ApplicationController
  # TODO: layout

  helper_method :status, :exception, :original_path

  def show
    render "exceptions/#{status}", status: status
  end

  protected
  def status
    @status ||= request.path_info[1..-1].to_i
  end

  def exception
    request.env['action_dispatch.exception']
  end

  def original_path
    request.env["action_dispatch.original_path"]
  end

end
