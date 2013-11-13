require "spec_helper"

describe SidesController do
  describe "routing" do

    it "routes to #index" do
      get("/sides").should route_to("sides#index")
    end

    it "routes to #new" do
      get("/sides/new").should route_to("sides#new")
    end

    it "routes to #show" do
      get("/sides/1").should route_to("sides#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sides/1/edit").should route_to("sides#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sides").should route_to("sides#create")
    end

    it "routes to #update" do
      put("/sides/1").should route_to("sides#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sides/1").should route_to("sides#destroy", :id => "1")
    end

  end
end
