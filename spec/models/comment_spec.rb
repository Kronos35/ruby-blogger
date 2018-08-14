require "rails_helper"

RSpec.describe Comment, type: :model do 
  
  before :each do
    @comment = Comment.new
  end

  it "is not valid without an Author" do
    @comment.author_name = nil
    @comment.should_not be_valid
    
  end

  it "is not valid without a body" do
    @comment.body = nil
    @comment.should_not be_valid
  end

  it "raises an error when saving with no author" do
    expect{ @comment.save! }.to raise_error
  end
end
