require 'rails_helper'

module Docs
  RSpec.describe User do
    before(:each) do
      @host_user = double("host_user", id: 1, name: "host user name")
      @user = Docs::User.new @host_user
    end

    it "Docs::user delegation" do
      expect(@user.id).to eq(@host_user.id)
      expect(@user.smart_name).to eq(@host_user.name)
    end

    it "Docs::user is_docs_admin?" do
      expect(@user.is_docs_admin?).to be false

      allow(@host_user).to receive(:is_docs_admin?).and_return false
      expect(@user.is_docs_admin?).to be false

      allow(@host_user).to receive(:is_docs_admin?).and_return true
      expect(@user.is_docs_admin?).to be true
    end
  end
end
