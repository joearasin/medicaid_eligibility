class DeterminationsController < ApplicationController
  include ActionController::MimeResponds

  def eval
    @app = Application.new(request)

    respond_to do |format|
      format.xml { render xml: @app }
      format.json { render json: @app, status: (@app.error.nil? ? :ok : :unprocessable_entity) }
    end
  end
end
