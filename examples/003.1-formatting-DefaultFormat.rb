# encoding: utf-8
# frozen_string_literal: true

require_relative '../lib/yell'

puts <<-EOS
# The default formatting string looks like: %d [%5L] %p : %m and is used when
# nothing else is defined.

logger = Yell.new STDOUT, :format => Yell::DefaultFormat
logger.info "Hello World!"
#=> "2012-02-29T09:30:00+01:00 [ INFO] 65784 : Hello World!"
#    ^                         ^       ^       ^
#    ISO8601 Timestamp         Level   Pid     Message

EOS

puts '=' * 40
logger = Yell.new STDOUT, format: Yell::DefaultFormat
logger.info 'Hello World!'
