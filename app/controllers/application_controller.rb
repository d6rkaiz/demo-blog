class ApplicationController < ActionController::Base
  def notice_clear
    respond_to do |format|
      format.turbo_stream
    end
  end
end
