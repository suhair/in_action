require 'spec_helper'

describe ProjectsController do
  let(:user) do 
    user = Factory(:user)
    user.confirm!
    user
  end

  context "standard users" do 
    it "cannot access the new action" do
      sign_in(:user, user)
      get :new
      response.should redirect_to(root_path)
      flash[:alert].should eql("You must be an admin to do that.")
    end
  end

  it "displays an error message when asked for a missing project" do
    get :show, :id => "not-here"
    response.should redirect_to(projects_path)
    flash[:alert].should eql("The project you were looking for could not be found.")
  end

end
