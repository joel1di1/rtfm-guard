# frozen_string_literal: true

module ApplicationHelper
  def gravatar_url(email)
    hash = Digest::MD5.hexdigest(email)
    "https://www.gravatar.com/avatar/#{hash}?d=identicon"
  end
end
