require 'rails_helper'
require 'rspec/rails'
require 'shoulda/matchers'

      describe User do
          it "invalid without email" do
          user = User.new(password: "12345678", password_confirmation: "12345678")
          expect(user).not_to be_valid
      end

      describe "API" do
          it "provides polling location" do
          user = User.new(address: "1520 2nd St., Santa Monica, CA  90401", email: "lynn@lynn.com", password: "lynnlynn", name: "lynn")
          response = user.api_call
          expect(response).to be_an(Array)
      end

          it "provides polling hours" do
          user = User.new(address: "1520 2nd St., Santa Monica, CA  90401", email: "lynn@lynn.com", password: "lynnlynn", name: "lynn")
          response = user.api_call
          expect(response).to be_an(Array)
     end
    end
end



