#!/usr/bin/ruby

require 'sinatra'

puts ARGV[0]
set :bind, '0.0.0.0'
get '/hi' do
	"Hello World!"
end

lines = IO.readlines("/root/names.txt")
get '/name' do
	puts "Got something"
	lineNumber = rand(4000)
	lines[lineNumber].split(" ")[0]
end
