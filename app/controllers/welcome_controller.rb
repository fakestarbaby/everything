class WelcomeController < ApplicationController
  def index
    @page_title = Settings.page.title.welcome.index
  end
end
