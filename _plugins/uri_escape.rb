require "uri"
# New Start

require "erb"
include ERB::Util

# End New

module Jekyll
  module URIEscape
    def uri_escape(text)
      # CGI.escape(text) if !text.nil?
      # URI.encode_www_form_component(text) if !text.nil?
      ERB::Util.url_encode(text)
    end
  end
end
Liquid::Template.register_filter(Jekyll::URIEscape)