# encoding: utf-8
# frozen_string_literal: true

require_relative '../lib/yell'

puts <<-EOS
# You can add logging to any class by including the Yell::Loggable module.
#
# When including the module, your class will get a :logger method. Before you
# can use it, though, you will need to define a logger providing the :name of
# your class.

Yell.new :stdout, :name => 'Foo'

# Define the class
class Foo
  include Yell::Loggable
end

foo = Foo.new
foo.logger.info "Hello World!"
#=> "2012-02-29T09:30:00+01:00 [ INFO] 65784 : Hello World!"

EOS

puts '=' * 40

Yell.new :stdout, name: 'Foo'

class Foo
  include Yell::Loggable
end

foo = Foo.new
foo.logger.info 'Hello World!'
