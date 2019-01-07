class CommentBroadcastJob < ApplicationJob
  #basically this file builds out the form's component and attaches that to the comment data from the form event so that when the comments are posted this is how it is formatted (extracted from the event handler in blogs.coffee)
  queue_as :default

  #comment is defined in blog.coffee in the jQuery event handler as the keyword 'data' from the user's comment they enter in the form event
  #now we're defining the @perform method from blogs.coffee that we used:
  def perform(comment)
    ActionCable.server.broadcast "blogs_#{comment.blog.id}_channel", comment: render_comment(comment)
  end

  private
  def render_comment(comment)
    CommentsController.render partial: 'comments/comment', locals: { comment: comment }
  end
end