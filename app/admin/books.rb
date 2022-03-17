ActiveAdmin.register Book do

   permit_params :title, :description, :author, :user_id, :image, :price


   index do
      selectable_column
      column :title
      column :price
      column "Image" do |book|
         image_tag book.image, size: "50x50"
      end

      column :author
      column :description
      column :user_id

      actions
   end
  
end
