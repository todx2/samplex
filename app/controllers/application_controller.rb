class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def helloxx
    render html: "hello, world!"
  end
end
