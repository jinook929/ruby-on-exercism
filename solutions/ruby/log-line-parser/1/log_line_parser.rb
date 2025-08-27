class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    # raise 'Please implement the LogLineParser#message method'
    @line.split(":")[1].strip
  end

  def log_level
    # raise 'Please implement the LogLineParser#log_level method'
    @line.split(":")[0].strip.gsub("[", "").gsub("]", "").downcase
  end

  def reformat
    # raise 'Please implement the LogLineParser#reformat method'
    message + " (" + log_level + ")"
  end
end
