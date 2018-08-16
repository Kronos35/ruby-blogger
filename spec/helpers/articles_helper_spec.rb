require "rails_helper"

describe ArticlesHelper do
  
  context ".article_tags" do
    it "should return a comma separated list of tag names" do
      article = Fabricate(:article, title: 'Dummy title', body: 'Dummy body')
      tags = [Fabricate(:tag, name:'tag1'), Fabricate(:tag, name:'tag2')]
      article.tags << tags
      article_tags.should == "#{tags[0].name}, #{tags[1].name}"
    end
  end

end