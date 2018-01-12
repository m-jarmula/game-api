module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
    end

    protected

    def find_verified_user
      if current_user = User.find_by(uid: auth_data['uid'])
        current_user
      else
        reject_unauthorized_connection
      end
    end

    private

    def auth_data
      JSON.parse(cookies['auth_headers'])
    end
  end
end
