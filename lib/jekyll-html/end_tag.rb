require 'jekyll'
require 'liquid'

require 'jekyll-html'

module Jekyll

  module Html

    class EndTag < Liquid::Tag

      def initialize(tag_name, txt, tokens)
        @context = txt.nil? || txt.empty? ? '' : txt
      end

      def render(context)
        Jekyll::Html.generate_end_tag(@context)
      end

    end

  end

end
