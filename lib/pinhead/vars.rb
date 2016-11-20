module Vars
  def self.file(vars)
    yaml = []
    Psych.load_stream(open(vars)) do |f|
      yaml << f
    end
    return yaml
  end

  def self.get(vars)
    fileOpts = Vars.file(vars)
    return fileOpts
  end
end
