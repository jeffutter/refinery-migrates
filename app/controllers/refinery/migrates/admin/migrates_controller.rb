module Refinery
  module Migrates
    module Admin
      class MigratesController < ::Refinery::AdminController

        crudify :'refinery/migrates/migrate', :xhr_paging => true

      end
    end
  end
end
