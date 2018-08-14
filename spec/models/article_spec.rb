require "rails_helper"

RSpec.describe Article, type: :model do 
  
  before :each do
    @article = Article.new
  end

  it "is not valid without a title" do
    @article.title = nil
    @article.should_not be_valid
  end

  it "is not valid without a body" do
    @article.body = nil
    @article.should_not be_valid
  end

  it "raises an error when saving with no author" do
    expect{ @article.save! }.to raise_error
  end
end
