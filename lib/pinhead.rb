# Require
require 'yaml'

# Require gems
require 'aws-sdk'

# Require local files
require_relative 'pinhead/version'
require_relative 'pinhead/connect'
require_relative 'pinhead/vars'

module Pinhead
  def self.run(vars)
    vars = Vars.get(vars)
    h1 = vars[0].to_h
    h2 = vars[1].to_h
    h1.merge!(h2)
    puts h1
  end
end

vars = ARGV.shift
Pinhead.run(vars)
#vars = ARGV.shift
#ec2 = Connect.ec2(vars)
#Pinhead.run(ec2)
