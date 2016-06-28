## ActiveRecord basics boilerplate

This is a minimalist implementation of ActiveRecord with one `Restaurant` model to live-code a demo for @LeWagon students, part of [Karr examples](https://github.com/lewagon/karr-examples), working with Sinatra.

- clone the repo
- run `rake db:create` to create your db
- run your migrations with `rake db:migrate`

Now you can play with the `Restaurant` model:

```bash
$ irb
irb> load "config/application.rb"
irb> restaurant = Restaurant.new(name: "La Tour d'Argent", address: "15 Quai de la Tournelle, 75005 Paris")
irb> restaurant.persisted?
     # => false
irb> restaurant.id
     # => nil
irb> restaurant.save
irb> restaurant.id
     # => 1
```

To launch a Sinatra server just run `ruby app.rb` and open a web browser at [http://localhost:4567](http://localhost:4567)

Enjoy!