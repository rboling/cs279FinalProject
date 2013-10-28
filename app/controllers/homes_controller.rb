class HomesController < ApplicationController

  # GET /homes
  # GET /homes.json
  def index
    @conditions = Condition.all
  end

end
