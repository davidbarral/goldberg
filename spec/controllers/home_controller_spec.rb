require "spec_helper"

describe HomeController do
  it "loads all projects" do
    projects = []
    Project.should_receive(:all).and_return(projects)
    get :index
    response.should be_ok
    assigns[:projects].should == projects
  end

  it "generates the cc feed" do
    pending ('need to figure out how to test xml generation')
    projects = [mock('project')]
    Project.should_receive(:all).and_return(projects)
    get :ccfeed
    response.body.should == ''
    assigns[:projects].should == projects
  end
end