class EventsController < ApplicationController

  def index 
    @events = Event.all
    @photos = Photo.all
  end


  def new
    @event = Event.new
    @event.photos.build
    
  end

  # def create
  #   @new_event = Event.new(event_params)
  #   if @new_event.save
  #     redirect_to events_path
  #   else
  #     redirect_to new_event_path
  #   end
  # end

  def create
    @event = Event.new(event_params)
    if @event.save
    respond_to do |format|
      format.js  { render json: @event }
      format.html { redirect_to events_path }
    end
  else 
    respond_to do |format|
      format.js 
      format.html { redirect_to events_path, notice: "update failed." }
    end
  end
end


  def show
    @event = Event.find(params[:id])
    @new_comment = @event.comments.build
    @new_tag = @event.tags.build
    # @photos = []
    # until @photos.count == 4 do
    # photo = Photo.find(rand(1..Photo.all.count))
    # @photos << photo unless @photos.include?(photo)
  end
# end


  def demoform
    @new_event = Event.new
  end

    
  

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      redirect_to events_path
    else
      redirect_to event_path
    end
  end

  def destroy
    @event = Event.find(params[:id])
      if @event.delete
      redirect_to events_path
    end
  end

  def download_photo_pic
    @photo = Photo.find(params[:id])
    file = @photo.photo_pic
    send_file file.path
  end

  def search
    @search_results  = Event.search(params[:search])
    render results_events_path
  end


  def results
  end 

  private

  def event_params
    params.require(:event).permit!
  end 

end