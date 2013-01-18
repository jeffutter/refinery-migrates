Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :migrates do
    resources :migrates, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :migrates, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :migrates, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
