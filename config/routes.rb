# frozen_string_literal: true

Rails.application.routes.draw do
  resources :schools, only: [] do
    resources :classes, only: %i[index], controller: 'schools/school_classes' do
      resources :students, only: %i[index], controller: 'schools/classes/students'
    end
  end

  resources :students, only: %i[create destroy]
end
