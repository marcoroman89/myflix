Myflix::Application.routes.draw do
  get 'ui(/:action)', controller: 'ui'

  get :root, to: "videos#index"
end
