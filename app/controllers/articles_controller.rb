class ArticlesController < ApplicationController
  before_action :is_admin?, except: :index

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to blog_path, notice: "Article créé"
    else
      redirect_to blog_path, notice: "Error, Error, Error !!!"
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

private

def article_params
  params.require(:article).permit(:title, :content, :picture)
end

  # def update
  #   @article = Article.find(params[:id])
  #   post_params = params.require(:article).permit(:title, :content, :picture)
  #   @article.update(post_params)
  #   redirect_to blog_path
  # end

end
