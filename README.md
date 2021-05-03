## Installation
Add these lines to your application's Gemfile:
```ruby
gem 'bootstrap_datetimepicker'
```

Then execute
```bash
$ bundle
```

To start using it in your Rails application, enable it via the asset pipeline.

If your server is running, you will need to __restart Rails__ before using the gem.

Add the following to your Javascript manifest file (`application.js`):
```javascript
//= require moment
//= require bootstrap-datetimepicker
//= require bootstrap_datetimepicker/dates
```

Also, modify your `application.css`:
```css
*= require bootstrap-datetimepicker
*= require bootstrap_datetimepicker/dates
```

## Usage
#### To use the date picker:
- Using simple form: use the date field 
  - Example: `f.input :some_date, as: :date, html5: true`
- Using rails helpers: use `date_field` and `date_field_tag` with a 'date' class
  - Example: `date_field_tag "some_date", nil, class: 'date'`
  - Example: `date_field "user" "birthday", class: 'date'`

#### To use the time picker:
- Using simple form: use the time field with the html5 option turned on
  - Example: `f.input :some_time, as: :time, html5: true`
- Using rails helpers: use `time_field` and `time_field_tag` with a 'time' class
  - Example: `time_field_tag "some_time", nil, class: 'time'`
  - Example: `time_field "user" "favorite_time", class: 'time'`

#### To use the datetime picker:
- Using simple form: use the datetime_local field
  - Example: `f.input :some_datetime, as: :datetime_local`
- Using rails helpers: use `datetime_local_field` and `datetime_local_field_tag` with a 'datetime_local' class
  - Example: `datetime_local_field_tag "some_datetime", nil, class: 'datetime_local'`
  - Example: `datetime_local_field "user" "birth_datetime", class: 'datetime_local'`

#### Setting a default date/time
Set a `data-default` option:
- Example: `f.input :some_date, as: :date, html5: true, input_html: { 'data-default' => '2017-01-01' }`
- Example: `time_field_tag 'some_time', nil, { class: 'time', 'data-default' => '13:04'`

## Development

### To Publish Gem Update
```
gem build bootstrap_datetimepicker.gemspec
gem push bootstrap_datetimepicker-0.0.x.gem
```

### Point Projects to Local Source Instead of Github

When refactoring and modifying code in this project while developing other projects, you may want your other project to point to the local source rather than the remote on Github. In your client project, you still need to keep the Gemfile pointing to the Github location but you can override your bundler setting like as follows:

`bundle config local.bootstrap_datetimepicker /Users/garyfoster/Documents/Projects/bootstrap_datetimepicker`

to undo this and revert to the remote github repository:

`bundle config --delete local.bootstrap_datetimepicker`
