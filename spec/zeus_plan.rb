require 'zeus/rails'

class ZeusPlan < Zeus::Rails

  def boot
  end


  def prerake
    require 'rake'
  end


  def rake
    Rake.application.run
  end


  def default_env
    require 'gh_preview'
  end

end

Zeus.plan = ZeusPlan.new
