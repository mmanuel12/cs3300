require "rails_helper"

RSpec.describe Project, type: :model do
  context "validations tests" do
    it "ensures the title is present" do
      project = Project.new(description: "Content of the description")
      expect(project.valid?).to eq(false)
    end

    it "ensures the description is present" do
      project = Project.new(title: "Title")
      expect(project.valid?).to eq(false)
    end
    
    it "should be able to save project" do
      project = Project.new(title: "Title", description: "Some description content goes here")
      expect(project.save).to eq(true)
    end

    it "should be able to delete a project" do
      project1 = Project.create(title: "Title1", description: "Some description content goes here 1")
      project1.delete
      expect(Project.count).to eq(0)
    end

    it "should be able to count current project totals" do
      project = Project.create(title: "Title", description: "Some description content goes here")
      expect(Project.count).to eq(1)
    end

    it "should be able to edit a project title" do
      project = Project.create(title: "Title 1", description: "Some description content goes here")
      project.update(title: "Title 2")
      expect(project.title).to eq('Title 2')
    end

    it "should be able to edit a project description" do
      project = Project.create(title: "Title 1", description: "Some description content goes here 1")
      project.update(description: "Some description content goes here 2")
      expect(project.description).to eq('Some description content goes here 2')
    end
  end

  context "scopes tests" do

  end
end
