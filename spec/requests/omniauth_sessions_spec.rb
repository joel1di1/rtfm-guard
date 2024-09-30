# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'OmniauthSessions' do
  describe 'GET /create' do
    it 'returns http success' do
      get '/omniauth_sessions/create'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /destroy' do
    it 'returns http success' do
      get '/omniauth_sessions/destroy'
      expect(response).to have_http_status(:success)
    end
  end
end
