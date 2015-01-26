class ViewModelCell < Cell::ViewModel
  include Kaminari::Cells

  self.view_paths = ["test/fake_app/app-cells/"]

  def show
    paginate(model)
  end
end