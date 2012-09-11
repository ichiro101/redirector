UrlRedir::Application.routes.draw do
  resources :urls

  root :to => "urls#index"

  match ':short_url' => 'urls#redirect'

end
