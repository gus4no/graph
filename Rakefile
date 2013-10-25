require 'rspec/core/rake_task'
require 'pry'
require_relative 'dijkstra'
require_relative 'graph'
require_relative 'edge'

RSpec::Core::RakeTask.new(:spec)

task :default => 'spec'

task :shortest_path, :src, :dst do |t, args|
  s =  Dijkstra.sample.shortest_path args[:src].to_i, args[:dst].to_i
  puts "The shortest path from #{args[:src]} to #{args[:dst]} is #{s}"
end
