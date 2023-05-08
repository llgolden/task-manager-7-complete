require "rails_helper"

RSpec.describe Task, type: :model do 
  describe "instance methods" do 
    describe "#laundry?" do 
      it "returns true when the title is laundry" do 
        task = Task.create!(title: "laundry", description: "clean clothes")
        # create --> .new + .save

        expect(task.laundry?).to be(true)
      end
    end
  end
end