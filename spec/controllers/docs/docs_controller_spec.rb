require 'rails_helper'

module Docs
  RSpec.describe DocsController, :type => :controller do

    describe "GET index" do
      it "redirect if no devise user logined" do
        get :index
        expect(response.status).to eq(302)
      end
      it "return success if devise user logined" do
        allow(controller).to receive(:signed_in?).and_return(true)
        get :index
        expect(response).to be_success
      end
    end

  end
end
