class Api::V1::PhonenumbersController < ApplicationController
 
 before_action :authenticate_user
  
 def create
   if Phonenumber.new(phonenumber_params).save
     render json: "saved the number"
   else
     render json: "Not saved the number"
   end
 end
  
 private
 
 def phonenumber_params
   params.require(:phonenumber).permit(:phonenumber,:user_id)
 end

end
