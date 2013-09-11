#!/usr/bin/ruby

require 'vrlib'
require "active_record"

#make program output in real time so errors visible in VR.
STDOUT.sync = true
STDERR.sync = true

#everything in these directories will be included
my_path = File.expand_path(File.dirname(__FILE__))
require_all Dir.glob(my_path + "/bin/**/*.rb") 



ActiveRecord::Base.establish_connection(
:adapter => "mysql",
:host => "localhost",
:database => "task_manager",
:username => "root",
:password => "Fuckyouto1",
:reconnect => true
)




p Task.get_all_tasks
