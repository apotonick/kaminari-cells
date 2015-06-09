# Kaminari::Cells

_Use Kaminari in Cells._


## Installation

Add this line to your application's Gemfile:

    gem 'kaminari-cells'


## Usage

To use the wonderful [Kaminari](https://github.com/amatsuda/kaminari) gem in your Cells view models, just do

```ruby
  class CommentsCell < Cell::ViewModel
    include Kaminari::Cells
```

You can now use `#paginate` in your cell and it will work.