require "rails_helper"

describe ArticlesController do
  describe "GET #index" do
    subject { get :index }

    it "renders the index template" do
      expect(subject).to render_template(:index)
      expect(subject).to render_template("index")
      expect(subject).to render_template("articles/index")
    end

    it "does not render a different template" do
      expect(subject).to_not render_template("articles/show")
    end
  end
end