require "spec_helper"

describe RisksController do
  describe "routing" do

    it "routes to #index" do
      get("/risks").should route_to("risks#index")
    end

    it "routes to #new" do
      get("/risks/new").should route_to("risks#new")
    end

    it "routes to #show" do
      get("/risks/1").should route_to("risks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/risks/1/edit").should route_to("risks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/risks").should route_to("risks#create")
    end

    it "routes to #update" do
      put("/risks/1").should route_to("risks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/risks/1").should route_to("risks#destroy", :id => "1")
    end

  end
end
