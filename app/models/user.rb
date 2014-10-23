class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :friends


    url = 'https://www.googleapis.com/civicinfo/v2/voterinfo'

    response = HTTParty.get(url)


end