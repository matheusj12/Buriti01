class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update]

  def index
    if params[:search].present?
      @artigos = Article.where('title LIKE ? OR description LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%")
    else
      @artigos = Article.all
    end
  end

  def show
    @article = Article.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to articles_path, alert: "Artigo não encontrado."
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article, notice: 'Artigo criado com sucesso.'
    else
      render :new
    end
  end

  # app/controllers/articles_controller.rb
def destroy
  @article = Article.find(params[:id])
  @article.destroy
  redirect_to articles_path, notice: 'Artigo excluído com sucesso.'
end


  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to @article, notice: 'Artigo atualizado com sucesso.'
    else
      render :edit
    end
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body, :author, :published_at, :tags, :pdf, :image)
  end
end
