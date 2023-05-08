require "rails_helper"

RSpec.describe Task, type: :model do 
  describe "instance methods" do 
    describe "#laundry?" do 
      it "returns true when the title is laundry" do 
        task = Task.create!(title: "laundry", description: "clean clothes")
        # create --> .new + .save

        expect(task.laundry?).to be(true)
      end
      it "returns true when the description is laundry" do
        task = Task.create!(title: "Clean my clothes", description: "laundry")

        expect(task.laundry?).to be(true)
      end
      it "returns false when neither the description no title is laundry" do
        task = Task.create!(title: "Clean my clothes", description: "cleaning")

        expect(task.laundry?).to be(false)
      end
      it "returns true when the title contains the word laundry" do
        task = Task.create!(title: "Doing my laundry", description: "cleaning")

        expect(task.laundry?).to be(true)
      end
      it "is case insensitive when checking if the title contains the word laundry" do
        task = Task.create!(title: "Doing my LaUnDrY", description: "cleaning")

        expect(task.laundry?).to be(true)
      end
      it "returns true when the description contains the word laundry" do 
        task = Task.create!(title: "Doing my chores", description: "do some laundry")

        expect(task.laundry?).to be(true)
      end
      it "is case insensitive when checking if the description contains the word laundry" do 
        task = Task.create!(title: "Doing my chores", description: "do some LaUnDry")

        expect(task.laundry?).to be(true)
      end
    end
  end
end