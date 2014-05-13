module Kaminari
  module Cells
    extend ActiveSupport::Concern

    included do
      if self < (Cell::Rails::ViewModel)
        include Kaminari::Helpers::CellsHelper
      else
        helper Kaminari::Helpers::CellsHelper
      end
    end
  end
end