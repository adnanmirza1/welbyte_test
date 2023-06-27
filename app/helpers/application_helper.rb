module ApplicationHelper
  def edit?
    params[:action] == 'edit'
  end

  def new?
    params[:action] == 'new'
  end

  def active?(controller, action = nil)
    if action.present?
      params[:controller] == controller && params[:action] == action ? 'active' : ''
    else
      params[:controller] == controller ? 'active' : ''
    end
  end
end
