require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
   
   describe "GET show" do
      it "has a 200 status code" do
          get :index
          expect(response.status).to eq(200)
      end
    end

    describe "GET show" do 
    it "returns http success" do 
      get :show, id: 1
      expect(response).to have_http_status(:success)
    end
  end

      describe User do
        it { should have_db_column(:name) }
      end

      # describe User do
      #   it { should have_many(:tracks) }
      # end

end