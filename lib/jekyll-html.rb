require 'jekyll'
require 'liquid'

require 'jekyll-html/start_tag'
require 'jekyll-html/end_tag'

module Jekyll

  module Html

    class << self

      def generate_start_tag(tag_content)
        raise('Tag content cannot be null!') if tag_content.nil?
        raise('Tag content cannot be empty!') if tag_content.empty?

        content = tag_content.split(' ')
        raise('Splitted content cannot be empty!') if content.empty?

        result = ''

        content.each do |target|
          targetContent = target.split('=')
          if targetContent.length != 2
            result += target + ' '
            next
          end

          key = targetContent[0]
          value = targetContent[1].tr('_', ' ')

          result += "#{key}=\"#{value}\"\""
        end

        "<#{result[0, result.length - 1]}>"
      end

      def generate_end_tag(tag_content)
        raise('Tag content cannot be null!') if tag_content.nil?
        raise('Tag content cannot be empty!') if tag_content.empty?

        content = tag_content.split(' ')
        raise('Splitted content cannot be empty!') if content.empty?

        "</#{content[0]}>"
      end

    end

  end

end

Liquid::Template.register_tag('starttag', Jekyll::Html::StartTag)
Liquid::Template.register_tag('endtag', Jekyll::Html::EndTag)
