module Bootstrap
  module Rails
    class Engine < ::Rails::Engine
      initializer 'bootstrap-sass.assets.precompile' do |app|
        %w(stylesheets javascripts fonts images).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end

        font_paths = %w(bootstrap/glyphicons-halflings-regular.eot bootstrap/glyphicons-halflings-regular.ttf
        bootstrap/glyphicons-halflings-regular.woff2 bootstrap/glyphicons-halflings-regular.svg bootstrap/glyphicons-halflings-regular.woff)
        font_paths.each { |el| app.config.assets.precompile.append(el) }
      end
    end
  end
end
