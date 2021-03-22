class ClassesController < ApplicationController
  before_action :authorize, only: [:secret]

  def secret
    render :index
  end
end