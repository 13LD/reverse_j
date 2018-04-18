module ReverseJ
  class Engine < ::Rails::Engine
    isolate_namespace ReverseJ
    config.reverse_j = ActiveSupport::OrderedOptions.new
    initializer 'reverse_j.configuration' do |app|
      app.routes.append do
        mount ReverseJ::Engine => "/"
      end
    end
  end
end
