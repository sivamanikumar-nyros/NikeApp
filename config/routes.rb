Rails.application.routes.draw do
  resources :men_accessories_categories
  resources :men_accessories
  resources :men_shop_collections
  resources :men_shop_collection_categories
  resources :men_clothes_categories
  resources :men_clothes
  resources :men_shoe_categories
  resources :men_shoes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: 'men_accessories_categories#index'
  root to: 'welcome#index'
end
