#!/usr/bin/ruby

require 'sinatra'

puts ARGV[0]
set :port, ARGV[0]
get '/hi' do
	"Hello World!"
end

lines = IO.readlines("names.txt")
get '/name' do
	puts "Got something"
	lineNumber = rand(4000)
	lines[lineNumber].split(" ")[0]
end
