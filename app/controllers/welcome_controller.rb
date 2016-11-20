class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
  	@user = @current_user
    @todos = Todo.all
    @events = Event.all
    @goals = Goal.all
  end
end
