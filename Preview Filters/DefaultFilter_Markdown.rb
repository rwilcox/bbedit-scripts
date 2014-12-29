#!/usr/local/var/rbenv/versions/2.1.2/bin/ruby

require 'rubygems'
require 'redcarpet'

r = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true, :fenced_code_blocks => true, :no_intra_emphasis => true, :lax_html_blocks => true)

input = ARGF.read

puts r.render(input)

