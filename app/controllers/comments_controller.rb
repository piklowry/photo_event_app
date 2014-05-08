class CommentsController < ApplicationController

  def index
    @comments = Comments.all

  end

  def new
    @comment = Comments.new
  end



def create
  @new_comment = Comment.new(comment_params)
  if @new_comment.save
  redirect_to :back
  else
  render photo_path
  end
end

def download_photo_pic
    @photo = Photo.find(params[:id])
    file = @photo.photo_pic
    send_file file.path
  end

private

  def comment_params
  params.require(:comment).permit!
  end

end



# class CommentsController < ApplicationController
#   before_filter :load_commentable
  
  # def index
  #   @comments = @liked.comments
  # end

  # def new
  #   @comment = @liked.comments.new
  # end

#    def create
#     @new_comment = Comment.new(comment_params)
#     if @new_comment.save
#       redirect_to events_path
#     else
#       render 
#     end
#   end

#   # def create
#   #   @comment = @liked.comments.new(comment_params)
#   #   if @comment.save
#   #     redirect_to @liked, notice: "Comment created."
#   #   else
#   #     render :new
#   #   end
#   # end

# private

#   def load_commentable
#     resource, id = request.path.split('/')[1, 2]
#     @liked = resource.singularize.classify.constantize.find(id)
#   end

#   def comment_params
#     params.require(:comment).permit!
#   end   


  
# end










  
#   def index
#   # @comments = Comment.all
#   @liked = find_liked  
#   @comments = @liked.comments

#   end


#   def new
#     @new_comment = Comment.new
#   end  
  
#   def create  
#     @liked = find_liked 
#     @comment = @liked.comments.build(comment_params)  
#     if @comment.save  
#       flash[:notice] = "Successfully saved comment."  
#       # redirect_to :id => nil  
#     else  
#       render :action => 'new'  
#     end  
#   end

#  def show
#     @comment = Comment.find(params[:id])
#   end

#   def edit
#     @comment = Comment.find(params[:id])
#   end

#   def update
#     @comment = Comment.find(params[:id])
#     if @comment.update_attributes(comment_params)
#       redirect_to comments_path
#     else
#       redirect_to comment_path
#     end
#   end

#   def destroy
#     @comment = Comment.find(params[:id])
#       if @comment.delete
#       redirect_to comments_path
#     end
#   end



#   def find_liked
#     resource, id = request.path.split('/')[1,2]
#     @liked = resource.singularize.classify.constantize.find(id)
#   end


# private

#   def comment_params
#     params.require(:comment).permit!
#   end   

# end
