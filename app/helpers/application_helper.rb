module ApplicationHelper
  def title(title)
    content_for(:title) { h(title) }
  end
end
