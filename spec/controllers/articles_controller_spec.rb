require "rails_helper"

describe ArticlesController do
  it "renders the index template" do
    get :index
    response.should render_template("index")
  end
end