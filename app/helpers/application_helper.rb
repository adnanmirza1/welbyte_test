module ApplicationHelper
  def edit?
    params[:action] == 'edit'
  end

  def new?
    params[:action] == 'new'
  end
end
