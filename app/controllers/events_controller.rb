class EventsController < ApplicationController

  def index 
    @events = Event.all
    @photos = Photo.all
  end

  def new
    @new_event = Event.new
    @new_event.photos.build
    
  end

  def create
    @new_event = Event.new(event_params)
    if @new_event.save
      redirect_to events_path
    else
      redirect_to new_event_path
    end
  end


  def show
    @event = Event.find(params[:id])
    @new_comment = @event.comments.build
    @new_tag = @event.tags.build
    @photos = Photo.all
    @photos = Photo.find_by(:name => "party")
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