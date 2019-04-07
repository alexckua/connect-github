module SessionsHelper
  def render_content
    current_user ? render('partials/links') : render('partials/user_form')
  end
end
