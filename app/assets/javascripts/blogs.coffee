jQuery(document).on 'turbolinks:load', ->
  comments = $('#comments')
  #2 halves- posting the comments and creating new ones:
  if comments.length  > 0
    App.global_chat = App.cable.subscriptions.create {
      channel: "BlogsChannel"
      #comments associated to particular blogs via a div id + data in show page:
      blog_id: comments.data('blog-id') 
    },
    connected= ->
    disconnected= ->
    #pass form data into comment class variable if browser has a user for Rails to give an Id:
    received: (data) ->
      comments.append data['comment']
    send_comment: (comment, blog_id) ->
    #@perform is a method we define in our jobs file
      @perform 'send_comment', comment: comment, blog_id: blog_id
  $('#new_comment').submit (e) ->
    #how jQuery turned text into an object, then the object into the model object "comment":
    $this = $(this)
    textarea = $this.find('#comment_content')
    if $.trim(textarea.val()).length > 1
    #using CoffeeScript below params are being passed in:
      App.global_chat.send_comment textarea.val(),
      comments.data('blog-id')
      textarea.val('')
    e.preventDefault()
    return false