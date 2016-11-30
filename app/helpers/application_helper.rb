module ApplicationHelper
  def page_class
    controller.class.to_s.gsub("Controller", '').underscore.gsub("/", '_') + " " + content_for(:page_class)
  end
end
