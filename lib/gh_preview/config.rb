module GhPreview
  module Config
    module_function

    NAME       = 'GitHub Preview'
    GITHUB_URL = 'https://github.com/jbox-web/gh-preview'


    def views_folder
      File.join(gem_path, 'views')
    end


    def public_folder
      File.join(gem_path, 'public')
    end


    def gem_path
      Gem::Specification.find_by_name('gh-preview').gem_dir
    end

  end
end
