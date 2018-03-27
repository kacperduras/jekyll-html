# frozen_string_literal: true

require "jekyll"
require "liquid"

require "jekyll-html"

module Jekyll
  module HTML

    class StartTag < Liquid::Tag
      def initialize(_tag_name, txt, _tokens)
        @context = txt.nil? || txt.empty? ? "" : txt
      end

      def render(_context)
        Jekyll::Html.generate_start_tag(@context)
      end
    end

  end
end
