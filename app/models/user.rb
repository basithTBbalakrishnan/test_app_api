class User < ApplicationRecord
 devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable
   
  
  has_many :phonenumbers
  
  
  def self.generate_user_api_token id
    return  JWT.encode({ id: id,exp: 60.days.from_now.to_i },
             Rails.application.secrets.secret_key_base)
  end
  
  
end
