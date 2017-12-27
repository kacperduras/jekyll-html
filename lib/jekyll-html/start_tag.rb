require 'jekyll'
require 'liquid'

require 'jekyll-html'

module Jekyll

  module Html

    class StartTag < Liquid::Tag

      def initialize(tag_name, txt, tokens)
        @context = txt.nil? || txt.empty? ? '' : txt
      end

      def render(context)
        Jekyll::Html.generate_start_tag(@context)
      end

    end

  end

end
