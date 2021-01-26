class HomeController < ApplicationController
    def index
      @categories = Category.where(promote: true).order('rank asc')
    end
end
