# Require

# Require gems
require 'aws-sdk'

# Require local files
require_relative 'pinhead/version'
require_relative 'pinhead/connect'

module Pinhead
  def self.run(vars)
    puts "Running pinhead"
  end
end

#vars = ARGV.shift
#ec2 = Connect.ec2(vars)
#Pinhead.run(ec2)
