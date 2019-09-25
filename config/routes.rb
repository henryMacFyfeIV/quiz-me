Rails.application.routes.draw do
  get 'welcome', to: 'static_pages#welcome', as: 'welcome'
  get 'about', to: 'static_pages#about', as: 'about'
  get 'contact', to: 'static_pages#contact', as: 'contact'
  post 'contact', to: 'static_pages#leave_feedback', as: 'leave_feedback'
  root to: redirect('/welcome', status: 302)

  #the "as: welcome" part gives us a varPath so we dont have to hardcode anything, nice!
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
