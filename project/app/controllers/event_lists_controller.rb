class EventListsController < ApplicationController
  before_action :set_event_list, only: [:show, :edit, :update, :destroy]

  # GET /event_lists
  # GET /event_lists.json
  def index
    if params[:q]
    @event_lists = EventList.find_all_by_query(params[:q])
    else
    @event_lists = EventList.all
    end
  end

  # GET /event_lists/1
  # GET /event_lists/1.json
  def show
  end

  # GET /event_lists/new
  def new
    @event_list = EventList.new
  end

  # GET /event_lists/1/edit
  def edit
  end

  # POST /event_lists
  # POST /event_lists.json
  def create
    @event_list = EventList.new(event_list_params)

    respond_to do |format|
      if @event_list.save
        format.html { redirect_to @event_list, notice: 'Event list was successfully created.' }
        format.json { render :show, status: :created, location: @event_list }
      else
        format.html { render :new }
        format.json { render json: @event_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_lists/1
  # PATCH/PUT /event_lists/1.json
  def update
    respond_to do |format|
      if @event_list.update(event_list_params)
        format.html { redirect_to @event_list, notice: 'Event list was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_list }
      else
        format.html { render :edit }
        format.json { render json: @event_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_lists/1
  # DELETE /event_lists/1.json
  def destroy
    @event_list.destroy
    respond_to do |format|
      format.html { redirect_to event_lists_url, notice: 'Event list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_list
      @event_list = EventList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_list_params
      params.require(:event_list).permit(:eventDate, :eventTime, :eventName, :eventDescription, :streetAddress, :City, :State, :Zip, :nbrOfRiders, :vehicleType, :PUstreetAddress, :PUCity, :PUState, :PUZip, :smokingAllowed, :createdBy, :eventDriver)
    end
end
