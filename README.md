# EnumWithOther

## Installation

```ruby
gem 'enum_with_other'
```

And then execute:

  $ bundle

Or install it yourself as:

  $ gem install enum_with_other

## Usage

In Rails 5.x, this gem support enum column with free description form with validation.
If enum column is selected 'other', other_column(string) should be present, while enum column is not selected as 'other', other_column should be blank.
This gem can be used with enum_help(internationalization of enums).

In migration,

```ruby
create_table :hoge do |t|
  t.integer :reason
  t.string  :other_reason
end
```

In model, 

```ruby
class Hoge < ApplicationRecord
  enum_with_other reason: {
    foo: 10,
    bar: 20,
    other_reason: 100
  }
end
```

In view,

```erb
<div>
  <%=
    form.select :reason,
    Hoge.reasons.keys    
  %>
</div>
<div>
  <%=
    form.text_field :other_reason
  %>
</div>
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the EnumWithOther project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/enum_with_other/blob/master/CODE_OF_CONDUCT.md).
