require "cells"
require "kaminari/helpers/helper_methods"
require "kaminari/cells/version"
require "cell/partial"

module Kaminari
  module Helpers
    module CellsHelper
      include Kaminari::Helpers::HelperMethods
      include ActionView::Helpers::OutputSafetyHelper
      include ActionView::Helpers::TranslationHelper
      include Cell::ViewModel::Partial

      def paginate(scope, **options, &block)
        options = options.reverse_merge(:views_prefix => "../views/")
        super
      end
    end
  end
end

require 'kaminari/cells'
