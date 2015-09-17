require 'html/pipeline/filter'
require 'html/pipeline/text_filter'
require 'pygments'
require 'redcarpet'

module GhPreview
  class RedcarpetFilter < HTML::Pipeline::TextFilter

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

class HTMLwithPygments < Redcarpet::Render::HTML
  def block_code(code, language)
    Pygments.highlight(code, lexer: language)
  end
end
