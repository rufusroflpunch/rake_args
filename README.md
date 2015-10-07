# RakeArguments

One of the features that Rake lacks are reasonable methods to pass arguments into a task. The most common
method for doing so is using environment variable, for example: `$ rake namespace:task VAR1=value VAR2=value`

Then, the variable can be referred to using `ENV['VAR1']`. However, this is somewhat clumsy for users. This
gem presents a more elegant solution. With this gem, can do this: `$ rake namespace:task option1 option2`

Simply do this in your Rakefile:

```ruby
require 'rake_args'

task :hello_world do
  args = task_args :hello, :world # {:hello=>"hi", :world=>"planet"}
  args.each { |k,v| puts "#{k} => #{v}" }
end
```

The result:

```
$ rake hello_world hi planet
:hello => hi
:world => planet
```
