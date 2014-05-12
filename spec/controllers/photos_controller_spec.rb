require 'spec_helper'

describe PhotosController do 

	
	describe "GET #index" do
		it "lists the photos of a page" do 
			FactoryGirl.create(:photo)
			get :index 
			assigns(:photos).should_not be_nil
		end 
			it "renders the :index view/home page" do
			get :index
			response.should render_template :index
		end 
	end



	describe "GET #show" do 
		it "assigns the requested event to @photos" do
			photo = FactoryGirl.create(:photo) 
			get :show, id: photo.id 
			assigns(:photo).should eq(photo)
		end


		it "renders the #show page" do 
		get :show, id: FactoryGirl.create(:photo) 
		response.should render_template :show 
		end 
	end 

	describe "POST #create" do 
		context "with valid attributes" do
			it "creates a new photo" do
		expect{
			post :create, photo: FactoryGirl.attributes_for(:photo)
		}.to change(Photo, :count).by(1)
			end
		end
	end

# 	describe 'DELETE destroy' do 
# 	before :each do 
# 		@photo = Photo.find(params[:id]) 
# 	end 

# 	it "delete the event" do
# 		expect {
# 			delete :destroy, id: @photo}.to change(Photo,:count).by(-1)
# 	end 
# end



end





