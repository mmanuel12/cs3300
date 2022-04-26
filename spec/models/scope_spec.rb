require "rails_helper"

RSpec.describe Project, type: :model do
  # ...

  context "scopes tests" do
    let(:params) { { title: "Title", description: "some description" } }
    before(:each) do
      Project.create(params)
      Project.create(params)
      Project.create(params)
    end

    it "should return all projects" do
      expect(Project.count).to eq(3)
    end

    it "should allow the creation of several projects" do
      (1...100).each { Project.create(params) }
      expect(Project.count).to eq(102)
    end

    

  end
end
