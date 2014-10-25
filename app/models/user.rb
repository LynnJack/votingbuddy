class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

# has many :friendships
# has many :friends, through => friendships
# has many :inverse_friendships, :class_name => "Friendship", foreign_key => "friend_id"
# has many :inverse_friends, :through => inverse_friendships, source => :user


      def api_call
            # This reaches into db to get the address of current user (self), used as a parameter
            self.address
            url = 'https://www.googleapis.com/civicinfo/v2/voterinfo'
            api_key = 'AIzaSyDpPTxbDor3UbG1Nan3Wob-1q_LhYlhLkE'
            # This gets the large Ruby hash response from api
            response = HTTParty.get(url, query: {address: self.address, key: api_key})
      
            # response is a ruby hash; a is reaching in to get the address
            a = response['pollingLocations'][0]['address']

            polling_address = a['locationName'] + ' '  + a['line1'] + ' '+ a['city'] + ' '  + a['state'] + '  ' +a['zip']
            polling_hours = response['pollingLocations'][0]['pollingHours']


           
              
      end
end