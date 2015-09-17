require 'spec_helper'

describe GhPreview::Server do

  def setup_app(file)
    Capybara.app = GhPreview::Server.new(file)
  end


  describe 'the preview process', type: :feature do
    context 'when file is not present' do
      it 'should render an error' do
        setup_app('toto.md')
        visit '/'
        expect(page).to have_content "toto.md doesn't exist !"
      end
    end

    context 'when README.md is present' do
      it 'should render the file' do
        setup_app(fixture_path('example.md'))
        visit '/'
        expect(page).to have_content 'A small Sinatra application to preview GitHub README files, easy ;)'
      end
    end
  end

end
