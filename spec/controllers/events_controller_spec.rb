require 'spec_helper'

describe EventsController do 

	
	describe "GET #index" do
		it "lists the events of a page" do 
			FactoryGirl.create(:event)
			get :index 
			assigns(:events).should_not be_nil
		end 
			it "renders the :index view/home page" do
			get :index
			response.should render_template :index
		end 
	end



	describe "GET #show" do 
		it "assigns the requested event to @events" do
			event = FactoryGirl.create(:event) 
			get :show, id: event.id 
			assigns(:event).should eq(event)
		end


		it "renders the #show page" do 
		get :show, id: FactoryGirl.create(:event) 
		response.should render_template :show 
		end 
	end 

	describe "POST #create" do 
		context "with valid attributes" do
			it "creates a new event" do
		expect{
			post :create, event: FactoryGirl.attributes_for(:event)
		}.to change(Event, :count).by(1)
			end
		end
	end


  # describe "PUT #update" do

  #   it "updates event with specified attributes" do
  #     event = FactoryGirl.create(:event)
  #     put :update, id: event
  #     updated_event = Event.find(event.id)
  #     expect.should_not be_nil
  #   end

  #   it "redirects to the edit page" do
  #     event = FactoryGirl.create(:event)
  #     put :update, id: event 
  #     response.should redirect_to "/events/#{event.id}"
  #   end

  # end

	
  describe "DELETE #destroy" do

    it "updates event with specified attributes" do
      event = FactoryGirl.create(:event)
      expect { 
                delete :destroy, id: event

              }.to change(Event, :count).by(-1)
    end

    it "redirects to the  page" do
      event = FactoryGirl.create(:event)
      delete :destroy, id: event
      response.should redirect_to events_path
    end

  end



end





