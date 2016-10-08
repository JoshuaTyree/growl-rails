require "growl/rails/version"
require "growl/rails/tag_helper"

module Growl
  module Rails
    class Engine < ::Rails::Engine
      ActionView::Base.send :include, TagHelper
    end
  end
end
