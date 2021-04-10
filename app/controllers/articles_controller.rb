class ArticlesController < ApplicationController
  #before_action :is_admin?, except: :index

  def index
    @articles = Article.all
    @articles = Article.paginate(page: params[:page], per_page: 6)
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

  def show
    @article = Article.find(params[:id])
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :picture)
  end

end
