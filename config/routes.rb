Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to Create photos
  get("/photos/new",  { :controller => "photos", :action => "new"})
  get("/create_photo",  { :controller => "photos", :action => "create_row"})

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })


  # Routes to Update photos
  get("/photos/:id/edit",  { :controller => "photos", :action => "update"})
  get("/update_photo/:id",  { :controller => "photos", :action => "edit"})

  # Routes to delete photos
  get("/delete_photo/:id",  {:controller => "photos", :action => "delete"})
end
