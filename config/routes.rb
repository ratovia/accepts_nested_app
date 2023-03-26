Rails.application.routes.draw do
  root 'pages#top'
  get 'pages/top'
  get 'pages/case1'
  get 'pages/case2'
  get 'pages/case3'
  resources :companies
  resources :team_leaders
  resources :projects
  resources :engineers
end
