class OrderMaller < ActionMailer::Base
  default from: "kev71187@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_maller.order_request.subject
  #
  def order_request
    @greeting = "Hi"

    mail to: "kev71187@gmail.com", subject: "Order Sandwich Request"
  end
end
