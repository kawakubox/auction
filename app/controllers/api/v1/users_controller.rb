# frozen_string_literal: true
module Api
  module V1
    class UsersController < ActionController::API
      def create
        @user = User.find_or_create_by(slack_id: params[:id]) do |u|
          u.name = params[:name]
        end
        @user.update(name: params[:name]) unless @user.name == params[:name]
      end
    end
  end
end
