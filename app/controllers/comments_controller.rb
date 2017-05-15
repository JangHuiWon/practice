class CommentsController < ApplicationController
  def destroy
    comment_id = params[:id]
    Comment.find(comment_id).destroy
    redirect_to(:back)
  end
  
  def create
    comment = Comment.new 
    comment.content = :content
    comment.post_id = params[:post_id]
    comment.save
    redirect_to(:back)
  end
  
end
