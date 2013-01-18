module Refinery
  module Migrates
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Migrates

      engine_name :refinery_migrates

      initializer "register refinerycms_migrates plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "migrates"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.migrates_admin_migrates_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/migrates/migrate'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Migrates)
      end
    end
  end
end
