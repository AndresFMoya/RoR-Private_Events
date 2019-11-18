# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Requests", type: :request do
  context "Requests" do
    it "Get Login Page" do
      get login_path
      expect(response).to have_http_status(200)
    end

    it "Get Sign up Page" do
      get signup_path
      expect(response).to have_http_status(200)
    end
  end
end
