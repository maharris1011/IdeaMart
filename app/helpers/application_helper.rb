module ApplicationHelper
  def flash_class(key)
    case key
    when :notice then
      'alert alert-info'
    when :success then
      'alert alert-success'
    when :error then
      'alert alert-danger'
    when :alert then
      'alert alert-danger'
    else
      'alert alert-info'
    end
  end

  def nav_link(link_text, link_path, expr)
    class_name = expr ? 'nav-link active' : 'nav-link'
    content_tag(:li, class: 'nav-item') do
      link_to link_text, link_path, class: class_name
    end
  end

  def idea_component_panel(section_title, section_content)
    content_tag(:div, class: 'panel panel-default') do
      content_tag(:div, class: 'panel-heading') do
        content_tag :h4, section_title, class: 'panel-title'
      end +
        content_tag(:div, class: 'panel-body') do
          section_content
        end
    end
  end
end
