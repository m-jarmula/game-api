module Overrides
  class RegistrationsController < DeviseTokenAuth::RegistrationsController
    private

    def sign_up_params
      params.require(:registration)
            .permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

    def account_update_params
      params.require(:registration)
            .permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
  end
end
