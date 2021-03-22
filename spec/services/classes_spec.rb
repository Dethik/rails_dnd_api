require 'rails_helper'

describe Dnd, :vcr => true do
  it "returns a 200 success header when the API call is made" do
    dnd_object = Dnd.new("wizard")
    response = dnd_object.get_class_name
    expect(response.code).to(eq(200))
  end
  it "returns class and subclass name" do
    dnd_object = Dnd.new("wizard")
    binding.pry
    response = dnd_object.get_class_name
    expect(response["name"]).to_not(eq(nil))
  end
end