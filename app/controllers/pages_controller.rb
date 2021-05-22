class PagesController < ApplicationController
  skip_before_action :authorize

  def home
  end

  def terms
  end

  def privacy
  end

  def about
  end
end
