class UserMailer < ApplicationMailer
    default from: "chandraprajjwal01@gmail.com"

    def order_confirmation_email(user,cart_itenms)
        @user =user
        @cart_items = cart_items
        mail(to: @user.email, subject:"order confirmation")
    end

end
