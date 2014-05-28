module Kaminari
  module Cells
    extend ActiveSupport::Concern

    included do
      # compat with 3.10's ViewModel.
      if (::Cell::Rails.const_defined?(:ViewModel) and self < Cell::Rails::ViewModel) or (::Cell.const_defined?(:ViewModel) and self < Cell::ViewModel)
        include Kaminari::Helpers::CellsHelper
      else
        helper Kaminari::Helpers::CellsHelper
      end
    end
  end
end