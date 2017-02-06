module ApplicationHelper
  def page_class
    controller.class.to_s.gsub("Controller", '').underscore.gsub("/", '_') + " " + content_for(:page_class)
  end

  def flash_messages
    flash.map do |key, msg|
      content_tag :div, (msg + "<div class='right'>#{icon 'close', class: 'pointer', data: {dismiss: "flash"}}</div>").html_safe, :id => key, :class => "#{key} flash p2 bold #{'abs' if current_page? root_path}"
    end.join.html_safe
  end
end
