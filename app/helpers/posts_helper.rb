module PostsHelper
  def form_post_stream(post:)
    turbo_stream.replace 'form', partial: 'form', locals: { post: post }
  end
end
