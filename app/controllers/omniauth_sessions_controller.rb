# frozen_string_literal: true

class OmniauthSessionsController < ApplicationController
  def create
    auth = request.env['omniauth.auth']

    user = User.find_or_create_by_auth(auth)

    sign_in(user)
    redirect_to root_url, notice: 'Signed in!'
  end

  def destroy
    sign_out
    redirect_to root_url, notice: 'Signed out!'
  end
end
