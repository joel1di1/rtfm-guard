require "rails_helper"

RSpec.describe KnowledgesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/knowledges").to route_to("knowledges#index")
    end

    it "routes to #new" do
      expect(get: "/knowledges/new").to route_to("knowledges#new")
    end

    it "routes to #show" do
      expect(get: "/knowledges/1").to route_to("knowledges#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/knowledges/1/edit").to route_to("knowledges#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/knowledges").to route_to("knowledges#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/knowledges/1").to route_to("knowledges#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/knowledges/1").to route_to("knowledges#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/knowledges/1").to route_to("knowledges#destroy", id: "1")
    end
  end
end
