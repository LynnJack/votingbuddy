class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


def api_call

    url = 'https://www.googleapis.com/civicinfo/v2/voterinfo'

    response = HTTParty.get(url)
# Need to pass in user's address
    polling_location = response[:pollingLocations]
    [:pollingHours]
end

end