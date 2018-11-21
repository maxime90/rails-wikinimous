class ArticlesController < ApplicationController

def index
  @articles = Article.all
end

def show
  @article = Article.find(params[:id])
end

def new
  @article_new = Article.new
end

def create
  @article = Article.create(task_params)
  redirect_to article_path(@article)
end

def edit
  @article = Article.find(params[:id])
end

def update
  @article = Article.find(params[:id])
  @article.update(task_params)
  redirect_to article_path(@article)
end

def destroy
  @article = Article.find(params[:id])
  @artcile.destroy
end
end
