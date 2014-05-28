module Kaminari
  module Cells
    extend ActiveSupport::Concern

    included do
      # compat with 3.10's ViewModel.
      if (const_defined?("Cell::Rails::ViewModel") and self < Cell::Rails::ViewModel) or (const_defined?("Cell::ViewModel") and self < Cell::ViewModel)
        include Kaminari::Helpers::CellsHelper
      else
        helper Kaminari::Helpers::CellsHelper
      end
    end
  end
end