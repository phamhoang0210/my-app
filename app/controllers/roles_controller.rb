class RolesController < ApplicationController
  def index
    @role = Role.all
    render layout: "backend"
  end

  def new
  end

  def create
  end

  def edit
  end

  def show
  end
end
