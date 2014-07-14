Rails.application.routes.draw do
  root 'welcome#index'
  get 'analyze' => 'welcome#analyze'

end
