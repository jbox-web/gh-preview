require 'spec_helper'

describe GhPreview::Converter do

  include GhPreview::Converter

  def markdown_content
    load_fixture('example.md')
  end


  def html_content
    load_fixture('example.html')
  end


  it 'should render markdown to html' do
    expect { to_html(markdown_content).to eq html_content }
  end

end
