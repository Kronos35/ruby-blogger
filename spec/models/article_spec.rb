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

  context "with 2 or more comments" do
    it "orders them chronologically" do
      article = Article.create!
      comment1 = article.comments.create!(:body => "first comment")
      comment2 = article.comments.create!(:body => "second comment")
      expect(article.reload.comments).to eq([comment1, comment2])
    end
  end

end
