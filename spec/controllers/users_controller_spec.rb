require 'spec_helper'

describe UsersController do

  render_views

  describe "GET 'new'" do
    before(:each) do
      get 'new'
    end
    it "should be successful" do
      response.should be_success
    end
    it "should have the right title" do
      response.should have_selector("title",
        :content => "#{@base_title} | Sign up")
    end
  end

end
