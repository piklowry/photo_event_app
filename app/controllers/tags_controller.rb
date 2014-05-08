class TagsController < ApplicationController

def index 
    @tags = Tag.all
  end

  def new
    @new_tag = Tag.new
  end

  def create
    @new_tag = Tag.new(tag_params)
    @event = Event.find(params[:event_id])
      if @new_tag.save
      @event.tags << @new_tag
      redirect_to :back
      else
       redirect_to events_path
    end
  end



  # def create
  #   puts "this is cool"
  #   @event = Event.all
  #   @new_tag = Tag.first_or_create(tag_params)
  #   @event << @new_tag
  #   if @new_tag.save
  #     redirect_to tags_path
  #   else
  #     redirect_to new_tag_path
  #   end
  # end

  # def create
  #   @new_tag = Tag.new(tag_params)
  #   if @new_tag.save
  #     redirect_to tags_path
  #   else
  #     redirect_to new_tag_path
  #   end
  # end
# @new_tag = Tag.new(tag_params)
  # if @new_tag.save
   #  @new_tag = Tag.new
    # @new_tag = Tag.first_or_create(tag_params)
    # event.tags << @new_tag


 #  tag = Tag.where(name: "Sunny").first
	# if tag.nil?
	#   tag = Tag.create name: "Sunny"
	# end

	# tag = Tag.first_or_create(v, :name => event.id)
 #  event.tags << tag

	# photo.tags << tag

	# tag = Tag.where(name: "Sunny").first_or_create
	# photo.tags << tag

  def show
    @tag = Tag.find(params[:id])
    @new_comment = @photo.comments.build
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update_attributes(tag_params)
      redirect_to tags_path
    else
      redirect_to tag_path
    end
  end

  def delete
    @tag = User.find(params[:id])
      if @tag.destroy
      redirect_to tags_path
    end
  end

  def search
    @search_results  = Tag.search(params[:search])
    render results_tags_path
  end

  def results
  end 

  private

  def tag_params
    params.require(:tag).permit!
  end 

end
