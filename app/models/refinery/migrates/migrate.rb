module Refinery
  module Migrates
    class Migrate < Refinery::Core::BaseModel
      self.table_name = 'refinery_migrates'

      attr_accessible :title, :position

      acts_as_indexed :fields => [:title]

      validates :title, :presence => true, :uniqueness => true
    end
  end
end
