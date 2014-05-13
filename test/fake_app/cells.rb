class UserCell < Cell::Rails
  helper Kaminari::Helpers::CellsHelper

  def show(users)
    @users = users

    render :inline => <<-ERB
<%= paginate @users %>
ERB
  end
end

class ViewModelCell < Cell::Rails
  include ViewModel
  include Kaminari::Helpers::CellsHelper

  def show
    render :inline => <<-ERB
<%= paginate model %>
ERB
  end
end