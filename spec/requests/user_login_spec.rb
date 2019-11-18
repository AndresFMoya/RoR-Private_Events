require 'rails_helper'

RSpec.describe "UserLogin", type: :request do

  let(:user) { users(:laura) }

  context "Requests" do
    it "Get Login Page" do
      get login_path
      post login_path, session: { name: user.name, email:user.email }

      expect(response).to redirect_to(user_path)
    end

    it "Get Sign up Page" do
      get signup_path
      expect(response).to have_http_status(200)
    end

  end
end
