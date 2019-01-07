class BlogsChannel < ApplicationCable::Channel
  #  #the show div passes the comment model (ass. to blogs and users) into Action Cable's channel component and uses its stream method to make the channel component dynamic:
  def subscribed
    stream_from "blogs_#{params['blog_id']}_channel"
  end

  def unsubscribed
  end

  def send_comment(data)
    current_user.comments.create!(content: data['comment'], blog_id: data['blog_id'])
  end
end