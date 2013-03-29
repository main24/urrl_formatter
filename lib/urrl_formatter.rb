require "urrl_formatter/version"
require "urrl_formatter/model_additions"
require "urrl_formatter/railtie" if defined? Rails

module UrrlFormatter
  def self.format_url(url)
    if url.to_s !~ url_regexp && "http://#{url}" =~ url_regexp
      "http://#{url}"
    else
      url
    end
  end

  def self.url_regexp
    /^https?:\/\/([^\s:@]+:[^\s:@]*@)?[-[[:alnum:]]]+(\.[-[[:alnum:]]]+)+\.?(:\d{1,5})?([\/?]\S*)?$/iux
  end
end
