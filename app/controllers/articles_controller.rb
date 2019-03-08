class ArticlesController < ApplicationController
#skip_before_action :authenticate_user!, :only => [:list] 
  
  def _article
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
    @tags = ActsAsTaggableOn::Tag.all
  end

  def list
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])

  end

  def new
    @article = Article.new
  end
  
  def article_params
   params.require(:article).permit(:title, :body,:tag_list , :image ,:author, :user_id)
  end

  
  def create
    @article = Article.new(article_params)
  
   if @article.save
      redirect_to :action => 'index'
   else
      render :action => 'new'
   end
  end 
   
  def edit
    @article = Article.find(params[:id])
  end
   
def update
   @article = Article.find(params[:id])
  
   if @article.update_attributes(article_param)
      redirect_to :action => 'show', :id => @article
   else
      render :action => 'edit'
   end
end

def article_param
   params.require(:article).permit(:title, :body,:tag_list , :image, :author, :user_id)
end

  
   
  def delete
    Article.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
