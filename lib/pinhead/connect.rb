module Connect
  # Make dynamic login depending on if env or file
  def self.ec2(vars)
    Aws::EC2::Client.new(region: 'eu-central-1')
  end
end
