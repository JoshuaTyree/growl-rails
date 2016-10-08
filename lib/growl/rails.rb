require "growl/rails/version"
require "growl/rails/helper"

module Growl
  module Rails
    class Engine < ::Rails::Engine
      ActionView::Base.send :include, Helper
    end
  end
end
