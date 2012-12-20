module Jekyll
  class PhoneTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      "☎ <a href=\"tel:#{@text.gsub('-','').gsub('\s','')}\">#{@text}</a>"
    end
  end
end

Liquid::Template.register_tag('tel', Jekyll::PhoneTag)
