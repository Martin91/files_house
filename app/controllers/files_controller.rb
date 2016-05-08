class FilesController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @file = Attachment.new
  end

  def create
  end
end
