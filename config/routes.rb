Rails.application.routes.draw do
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch 'articles/:id', to: 'articles#update'

  # = two lines above are same as line below

  resources :articles, only: [:index, :show, :new, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
