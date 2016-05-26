class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    # render plain: params[:article].inspect #確認接值
    # 接值(white list the incoming params)
    @article = Article.new(article_params)
    @article.save
    
  end

  private
  # white list (開洞之意) the incoming params
  def article_params
    params.require(:article).permit(:title, :description)
  end
end