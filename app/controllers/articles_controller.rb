class ArticlesController < ApplicationController
def new 
	@article = Article.new
end

def create
	#render plain: params[:article].inspect
	@article= Article.new(article_params)
	if @article.save
		flash[:notice] = " article was successfuly created"
	redirect_to articles_path(@article)
else
	render 'new'
end

end

private 
def article_params
 params.require(:article).permit(:title,:description)
end


end
