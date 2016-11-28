# encoding: utf-8
# frozen_string_literal: true

require_relative '../lib/yell'

puts <<-EOS
You may colorize the log output on your io-based loggers loke so:

logger = Yell.new STDOUT, :colors => true

Yell::Severities.each do |level|
  logger.send level.downcase, level
end
EOS

puts '=' * 40
logger = Yell.new STDOUT, colors: true

Yell::Severities.each do |level|
  logger.send level.downcase, level
end
