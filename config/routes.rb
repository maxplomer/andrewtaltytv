AuthDemo::Application.routes.draw do
  root to: 'static_pages#home'

  #admin dashboard
  post 'changevideo' => 'users#changevideo'
  resource :session, only: [:create, :destroy]
  get 'admin' => 'sessions#new'
  get 'dashboard' => 'dashboards#show'
end
