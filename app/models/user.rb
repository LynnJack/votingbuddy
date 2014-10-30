class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :friendships
has_many :friends, class_name: "User", through: :friendships, foreign_key: "friend_id"

validates :name, presence: true

before_update :saving_polling_info, if: :address?

      def api_call
            
            url = 'https://www.googleapis.com/civicinfo/v2/voterinfo'
            api_key = ENV['GOOGLE_KEY']
            # This gets the large Ruby hash response from api
            response = HTTParty.get(url, query: {address: self.address, key: api_key})
      
            # response is a ruby hash; a is reaching in to get the address
            a = response['pollingLocations']#

            # 
            # 

            # self.update_attributes!(polling_location: polling_address, polling_hours: polling_hours)

      end


      def polling_address_reformat
            a = self.api_call[0]['address']
            polling_address = a['locationName'] + ' '  + a['line1'] + ' '+ a['city'] + ' '  + a['state'] + '  ' +a['zip']
      end

      def polling_hours_reformat
            response = self.api_call[0]['pollingHours']
      end

      def saving_polling_info
          self.polling_location = self.polling_address_reformat
          self.polling_hours = self.polling_hours_reformat
      end




end




