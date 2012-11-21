# thor-logger

Plugin for Thor to add a default set of logging class_options and to initialize a Log4R logger

## Usage

Include the gem.

Add include ThorLogger to thor class.

## Ideas and ToDos

* Change setup_logger to use handle_<option> when that functionality arrives in Thor.
* Allow library user to select which options he does or doesn't want.
* Allow library user to skip adding Thor class_options and to use defaults instead
* Allow library user to pass a logger
* Allow library user to define a yml file with defaults for class_options

## Contributing to thor-logger
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2012 Scott M Parrish. See LICENSE.txt for
further details.

