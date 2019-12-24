# Quandora

a simple gem to connect to the [quandora](https://www.quandora.com/).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'quandora'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install quandora


## Configuration

Add this to your `config/application.rb`.

```ruby
Quandora.configure do |config|
  config.url = 'https://example.quandora.com/m/json'
  config.username = 'example@example.com'
  config.password = 'password'
end

# Alternative way to configure

config = Quandora::Configuration.new
config.url = 'https://example.quandora.com/m/json'
config.username = 'example@example.com'
config.password = 'password'
```

## Usage

```ruby
activity apis:
index: Quandora.activity.index

------------------------------------------------------

badges apis:
index: Quandora.badges.index

------------------------------------------------------

end points apis:
index: Quandora.end_points.index

------------------------------------------------------

users apis:
index: Quandora.end_points.index
show: Quandora.end_points.show(user_id)
me: Quandora.end_points.me
create: Quandora.end_points.create(args)
the args it must be:
{
  "email": "email",
  "password": "password",
  "firstName": "first_name",
  "lastName": "last_name",
  "title": "title",
  "isManager": "is_manager",
  "aliases": "aliases",
  "groups": "groups"
}

------------------------------------------------------

bases apis:
index: Quandora.bases.index
questions: Quandora.bases.questions('base_id')
show: Quandora.bases.show('base_id')
ask: Quandora.bases.ask('base_id')
follow: Quandora.bases.follow('base_id')
mlt: Quandora.bases.mlt('base_id')

bases tags apis:
index: Quandora.bases.tag('base_id').list
show: Quandora.bases.tag('base_id').show('tag_name')

create: Quandora.bases.tag('base_id').create(args)
the args it must be:
{
  "name": "name",
  "url": "url",
  "content": "content"
}

udpate: Quandora.bases.tag('base_id').udpate(args)
the args it must be:
{
  "uid": "uid",
  "content": "content"
}

delete: Quandora.bases.tag('base_id').delete('tag_name')

bases reports apis:
asked: Quandora.bases.report('base_id').asked
users_reputation_change: Quandora.bases.report('base_id').users_reputation_change
most_voted_question: Quandora.bases.report('base_id').most_voted_question

------------------------------------------------------

question apis:
view: Quandora.question.view('question_id')
mlt: Quandora.question.mlt('question_id')

answer: Quandora.question.answer('question_id', args)
the args it must be:
{
  "content_type": "content_type",
  "content": "content"
}

vote: Quandora.question.vote('question_id', args)
the args it must be:
{
  "data": "true or false"
}

question tag apis:
set: Quandora.question.tag('question_id').set('tag1,tag2,tag3')
add: Quandora.question.tag('question_id').add('tag1,tag2,tag3')

question comments apis:
create: Quandora.question.comment('question_id').create(args)
the args it must be:
{
  'comment': 'comment'
}

update: Quandora.question.comment('question_id').update(args)
the args it must be:
{
  'comment': 'comment',
  'hash': 'hash',
}

delete: Quandora.question.comment('question_id').delete('hash')
```

For more information please go to the [quandora api document](https://www.quandora.com/quandora-rest-api-documentation/)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/quandora. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Quandora project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/quandora/blob/master/CODE_OF_CONDUCT.md).
