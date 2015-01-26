module Kaminari
  module Cells
    extend ActiveSupport::Concern

    included do
      include Kaminari::Helpers::CellsHelper
    end
  end
end