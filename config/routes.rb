Rails.application.routes.draw do
  get 'faculty/index'
  get 'studentinfo/index'
  get 'department/index'
  get 'placements/index'
  get 'aboutus/index'
  resources :faculties
  get 'home/index'
  get 'home/show'
  get 'home/new'
  get 'home/edit'
  get 'home/delete'
  root'home#index'
  resources:home do 
  	collection{post :import}
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
