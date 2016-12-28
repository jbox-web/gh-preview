require 'html/pipeline'
require 'task_list/filter'

module GhPreview
  module Converter
    module_function

    def to_html(markdown)
      pipeline.call(markdown)[:output].to_s
    end


    def pipeline
      HTML::Pipeline.new(filters)
    end


    def filters
      [
        GhPreview::RedcarpetFilter,
        TaskList::Filter,
        HTML::Pipeline::AutolinkFilter,
        HTML::Pipeline::TableOfContentsFilter
      ]
    end

  end
end
