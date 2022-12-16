class PagesController < ApplicationController
  require 'date'

  def index
    @tasks = Task.all
  end
end
