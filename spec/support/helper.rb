module Helper

  def load_fixture(fixture)
    File.read(fixture_path(fixture))
  end


  def fixture_path(fixture)
    File.expand_path(File.dirname(__FILE__) + "/../fixtures/#{fixture}")
  end

end
