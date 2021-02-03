#!/usr/bin/ruby
# frozen_string_literal: true

require 'webrick'
include WEBrick

options = { Port: 8081, DocumentRoot: '.' }

s = WEBrick::HTTPServer.new(options)
HTTPUtils::DefaultMimeTypes.store('rhtml', 'text/html')
shut = proc { s.shutdown }
siglist = %w[TERM QUIT]
siglist.concat(%w[HUP INT]) if STDIN.tty?
siglist &= Signal.list.keys
siglist.each do |sig|
  Signal.trap(sig, shut)
end