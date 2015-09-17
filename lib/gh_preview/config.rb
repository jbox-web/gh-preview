module GhPreview
  module Config
    extend self

    NAME       = 'GitHub Preview'
    GITHUB_URL = 'https://github.com/jbox-web/gh-preview'


    def views_folder
      File.join(gem_path, 'views')
    end


    def public_folder
      File.join(gem_path, 'public')
    end


    private


      def gem_path
        Gem::Specification.find_by_name('gh-preview').gem_dir
      end

  end
end
