require 'html/pipeline/filter'
require 'html/pipeline/text_filter'
require 'pygments'
require 'redcarpet'

module HTML
  class Pipeline
    # HTML Filter that converts Markdown text into HTML and converts into a
    # DocumentFragment. This is different from most filters in that it can take a
    # non-HTML as input. It must be used as the first filter in a pipeline.
    #
    # This filter does not write any additional information to the context hash.
    #
    class RedcarpetFilter < TextFilter

      def initialize(text, context = nil, result = nil)
        super text, context, result
        @text = @text.gsub "\r", ''
      end


      # Convert Markdown to HTML using the best available implementation
      # and convert into a DocumentFragment.
      #
      def call
        Redcarpet::Markdown.new(HTMLwithPygments, mk_options).render(@text)
      end


      private


        def mk_options
          {
            strikethrough: true,
            autolink:      true,
            tables:        true,
            underline:     true,
            highlight:     true,
            lax_spacing:   true,
            fenced_code_blocks: true
          }
        end

    end
  end
end

class HTMLwithPygments < Redcarpet::Render::HTML
  def block_code(code, language)
    Pygments.highlight(code, lexer: language)
  end
end
