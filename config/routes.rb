require "sidekiq-ent/web"

Rails.application.routes.draw do
  resources :four_step_runs
  mount Sidekiq::Web => "admin/sidekiq"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
