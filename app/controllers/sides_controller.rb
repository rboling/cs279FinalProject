class SidesController < ApplicationController
  before_action :set_side, only: [:show, :edit, :update, :destroy]

  # GET /sides
  # GET /sides.json
  def index
    @sides = Side.all
    #respond_to do |format|
    #end
    if request.xhr?
      @side = Side.new(side_params)
      puts "\n\n\n\n\n\n\n\nthe body \n\n\n\n\n\n"
      theSide = Side.where(:body => @side.body).first
      theSide.count += 1
      theSide.save
      puts "\n\n\n\n\n\n\nwe have a request!!!\n\n\n\n\n\n"
    end
  end

  # GET /sides/1
  # GET /sides/1.json
  def show
  end

  # GET /sides/new
  def new
    @side = Side.new
  end

  # GET /sides/1/edit
  def edit
    puts "\n\n\n\n\nI am in the edit controller\n\n\n\n\n"
  end

  # POST /sides
  # POST /sides.json
  def create
    @side = Side.new(side_params)
    logger.debug "\n\n\n\n\nIM IN HERE\n\n\n\n\n\n\n"
    respond_to do |format|
      if @side.save
        format.html {}#redirect_to @side, notice: 'Side was successfully created.' }
        format.json {}#render action: 'show', status: :created, location: @side }
        format.js {}
      else
        format.html { render action: 'new' }
        format.json { render json: @side.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sides/1
  # PATCH/PUT /sides/1.json
  def update
    respond_to do |format|
      if @side.update(side_params)
        Rails.logger.error "\n\n\n\n\n\n\n\n the condition_id \n\n\n\n\n"
        Rails.logger.error "#{@side.condition_id}"
        Rails.logger.flush
        format.html{ redirect_to condition_path(@side.condition_id)}
        format.json{}
        #format.html { redirect_to @side, notice: 'Side was successfully updated.' }
        #format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @side.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sides/1
  # DELETE /sides/1.json
  def destroy
    @side.destroy
    respond_to do |format|
      format.html { redirect_to sides_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_side
      @side = Side.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def side_params
      params.require(:side).permit(:condition_id, :body, :summary, :is_left)
    end
end
