module Refinery
  module Migrates
    class MigratesController < ::ApplicationController

      before_filter :find_all_migrates
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @migrate in the line below:
        present(@page)
      end

      def show
        @migrate = Migrate.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @migrate in the line below:
        present(@page)
      end

    protected

      def find_all_migrates
        @migrates = Migrate.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/migrates").first
      end

    end
  end
end
