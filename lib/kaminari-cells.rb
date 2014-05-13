require "kaminari-cells/version"

module Kaminari
  module Helpers
    module CellsHelper
      include ActionViewExtension
      include ActionView::Helpers::OutputSafetyHelper

      def paginate(scope, options = {}, &block)
        options = options.reverse_merge(:views_prefix => "../views/")
        super
      end
    end
  end
end
