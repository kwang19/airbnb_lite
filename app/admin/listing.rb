ActiveAdmin.register Listing do

 permit_params :title, :photos, :description, :host_id, :privateroomorentirehome, :number_of_bedrooms, :number_of_bathrooms, :guest_id, :max_occupants, :city, :neighborhood, :policies, :default_price_per_night

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
