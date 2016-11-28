# encoding: utf-8
# frozen_string_literal: true

require_relative '../lib/yell'

puts <<-EOS
# On the basics, Yell works just like any other logging library.
#
# However, it enriches your log messages to make it more readable. By default,
# it will format the given message as follows:

logger = Yell.new STDOUT
logger.info "Hello World!"

#=> "2012-02-29T09:30:00+01:00 [ INFO] 65784 : Hello World!"
#    ^                         ^       ^       ^
#    ISO8601 Timestamp         Level   Pid     Message

EOS

puts '=' * 40
logger = Yell.new STDOUT
logger.info 'Hello World!'
