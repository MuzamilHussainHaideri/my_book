ActiveAdmin.register Book do

   permit_params :title, :description, :author, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :author, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
