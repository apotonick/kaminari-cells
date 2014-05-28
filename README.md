# Kaminari::Cells

_Use Kaminari in Cells._


## Installation

Add this line to your application's Gemfile:

    gem 'kaminari-cells'


## Usage

To use the wonderful [Kaminari](https://github.com/amatsuda/kaminari) gem in your Cells, just do

```ruby
  class CommentsCell < Cell::Rails
    include Kaminari::Cells
```

The same works with Cells [view models](https://github.com/apotonick/cells#view-models).

```ruby
  class CommentsCell < Cell::ViewModel
    include Kaminari::Cells
```

You can now use `#paginate` in your cell and it will work.