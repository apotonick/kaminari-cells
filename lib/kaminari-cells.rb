require "cells"
require "kaminari"
require "kaminari/cells/version"
require "cell/partial"

ActiveSupport.on_load :action_view do
  module Kaminari
    module Helpers
      module CellsHelper
        include Kaminari::ActionViewExtension
        include ActionView::Helpers::OutputSafetyHelper
        include ActionView::Helpers::TranslationHelper
        include Cell::ViewModel::Partial

        def paginate(scope, options = {}, &block)
          options = options.reverse_merge(:views_prefix => "../views/")
          super
        end
      end
    end
  end
end

require 'kaminari/cells'
