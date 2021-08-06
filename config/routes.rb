Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/chords" => "chords#index"
  # post "/chords" => "chords#create"
  get "/chords/:id" => "chords#show"
  # patch "/chords/:id" => "chords#update"
  # delete "/chords/:id" => "chords#destroy"

  get "/user_chords" => "user_chords#index"
  post "/user_chords" => "user_chords#create"
  get "/user_chords/:id" => "user_chords#show"
  # patch "/user_chords/:id" => "user_chords#update"
  delete "/user_chords/:id" => "user_chords#destroy"
end
