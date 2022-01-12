module ApplicationHelper
  NOTICE = {
    create: 'Post created successfully',
    update: 'Post updated successfully',
    delete: 'Post deleted successfully',
    error: 'Something went wrong'
  }

  def notice_stream(message:, status:)
    turbo_stream.replace 'notice', partial: 'application/notice', locals: { notice: NOTICE[message], status: status }
  end
end
