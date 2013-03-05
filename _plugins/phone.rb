module Jekyll
  class PhoneTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      "\u260E \<a href=\"tel:#{@text.strip.gsub('-','').gsub('\s','')}\"\>#{@text.strip}</a>"
    end
  end
end

Liquid::Template.register_tag('tel', Jekyll::PhoneTag)
