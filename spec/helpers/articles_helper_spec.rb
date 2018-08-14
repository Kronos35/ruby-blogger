require "rails_helper"

describe ArticlesHelper do
  
  context ".article_tags" do
    it "should return a comma separated list of tag names" do
      article = Fabricate(:article)
      tags = [Fabricate(:tag), Fabricate(:tag)]
      article.tags << tags
      article_tags.should == "#{tags[0].name}, #{tags[1].name}"
    end
  end

end