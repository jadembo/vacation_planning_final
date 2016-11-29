Rails.application.routes.draw do

root "requests#show"
  # Routes for the Allotment resource:
  # CREATE
  get "/allotments/new", :controller => "allotments", :action => "new"
  post "/create_allotment", :controller => "allotments", :action => "create"

  # READ
  get "/my_allotments", :controller => "allotments", :action => "show"


  # UPDATE
  post "/update_allotment/", :controller => "allotments", :action => "update"

  # DELETE
  get "/delete_allotment/:id", :controller => "allotments", :action => "destroy"
  #------------------------------

  # Routes for the Department resource:
  # CREATE
  get "/departments/new", :controller => "departments", :action => "new"
  post "/create_department", :controller => "departments", :action => "create"

  # READ
  get "/departments", :controller => "departments", :action => "index"
  get "/departments/:id", :controller => "departments", :action => "show"

  # UPDATE
  get "/departments/:id/edit", :controller => "departments", :action => "edit"
  post "/update_department/:id", :controller => "departments", :action => "update"

  # DELETE
  get "/delete_department/:id", :controller => "departments", :action => "destroy"
  #------------------------------

  # Routes for the Role resource:
  # CREATE
  get "/roles/new", :controller => "roles", :action => "new"
  post "/create_role", :controller => "roles", :action => "create"

  # READ
  get "/roles", :controller => "roles", :action => "index"
  get "/roles/:id", :controller => "roles", :action => "show"

  # UPDATE
  get "/roles/:id/edit", :controller => "roles", :action => "edit"
  post "/update_role/:id", :controller => "roles", :action => "update"

  # DELETE
  get "/delete_role/:id", :controller => "roles", :action => "destroy"
  #------------------------------

  # Routes for the Request resource:
  # CREATE
  get "/schedule_vacation", :controller => "requests", :action => "schedule"
  get "/add_personal_day", :controller => "requests", :action => "add_personal_day"
  get "/add_vacation_day", :controller => "requests", :action => "add_vacation_day"

  # READ
  get "/requests", :controller => "requests", :action => "index"
  get "/my_requests", :controller => "requests", :action => "show"
  get "/my_departments_requests", :controller => "requests", :action=>"department_vacation"
  # DELETE
  get "/delete_request/:id", :controller => "requests", :action => "destroy"



  #------------------------------

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
