class TagsController < ApplicationController
  def index
    @tags = ActsAsTaggableOn::Tag.all
  end

  def show
    @tags = ActsAsTaggableOn::Tag.all
    @tag =  ActsAsTaggableOn::Tag.find(params[:id])
    @articles = Article.tagged_with(@tag.name)
  end
end
