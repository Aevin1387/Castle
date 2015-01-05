#!/usr/bin/env ruby
require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 1000

def rubygems_18_or_better?
  defined?(Gem.post_reset_hooks)
end

def rubygems_20_or_better?
  Gem::VERSION.to_i >= 2
end

if defined? Bundler
  Gem.post_reset_hooks.reject! { |hook| hook.source_location.first =~ %r{/bundler/} }
  Gem::Specification.reset
  if rubygems_20_or_better?
    load 'rubygems/core_ext/kernel_require.rb'
  else
    load 'rubygems/custom_require.rb'
  end
end

Pry.commands.alias_command 'c', 'continue'
Pry.commands.alias_command 's', 'step'
Pry.commands.alias_command 'n', 'next'
