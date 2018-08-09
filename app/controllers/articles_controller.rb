class ArticlesController < ApplicationController
  include ArticlesHelper

  def index
    # Get all articles
    @articles = Article.all
  end
  def show
    # Find specific Article
    @article = Article.find(params[:id])
  end
  def new
    # Setting variable for sharing with the 'New' view
    @article = Article.new
  end
  def create
    
    # Create new Article
    @article = Article.new(article_params)
    @article.save
    
    # Redirect to see article
    redirect_to article_path(@article)
  end
  def destroy
    # Delete the entry to the blog
    @article = Article.destroy(params[:id])

    redirect_to action: "index"
  end
  def edit
    # Find specific Article
    @article = Article.find(params[:id])
  end
  def update
    # Find article
    @article = Article.find(params[:id])
    # Update article's values
    @article.update(article_params)

    redirect_to article_path(@article)
  end
end
