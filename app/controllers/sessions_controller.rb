class SessionsController < ApplicationController
  def create
    @user = User.find_or_create_from_auth(request.env['omniauth.auth'])
    if @user
      session[:user_id] = @user.id
    end
    redirect_to root_path
  end
end

# As a visitor
# When I login using github
# Then I should be on the home page
# And I should see a link for 'Logout'
# And I should not see a link for 'Login'

# As a visitor
# When I attempt to login using github
# And it is not successful
# Then I should be on the home page
# And I should see a link for 'Login'
# And I should not see a link for 'Logout'
