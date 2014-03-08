# Run as:
# ruby ./lib/connection_test.rb

require 'rubygems'
require 'active_record'
require 'ruby-debug'

config = {
    :adapter  => 'sqlserver',
    :host => '10.0.0.212',
    :username => 'meso',
    :password => 'm+S=0',
    :database => 'CWLDATEN'
}
connection = ActiveRecord::Base.establish_connection(config)
puts connection.connection

class LegacyTable < ActiveRecord::Base
