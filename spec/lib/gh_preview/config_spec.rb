require 'spec_helper'

describe GhPreview::Config do

  include GhPreview::Config

  it "should have a view folder" do
    expect(views_folder).to eq File.join(Dir.pwd, 'views')
  end


  it "should have a public folder" do
    expect(public_folder).to eq File.join(Dir.pwd, 'public')
  end
end
