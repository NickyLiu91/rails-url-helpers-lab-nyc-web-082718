Rails.application.routes.draw do
  # resources :students
  resources :students, only: :index
  get "/students", to: "students#show"
  # get '/:id/activate' to: 'students#show' as: 'false'

  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.
  # get "students/:id", to: "students#show"
  # get "students/:id", to: "students#show"
end
