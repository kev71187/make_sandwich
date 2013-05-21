class OrderMailer < ActionMailer::Base
  default from: "kev71187@yahoo.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_maller.order_request.subject
  #
  def order_request(user, order)
    @order = order
    @user = user
    @random_quote = random_quote
    mail to: user.email, subject: "Order Sandwich Request"
  end

  def random_quote
    @array = [
      'I originally built this app with only theses instructions: "**make_sandwich is meant to test two primary categories: your proficiency in the basics of a Rails app and your personal coding strengths. The former includes creating an app, checking it in to Git multiple times as you work on it, pushing it to Heroku, and creating tests for your code. The latter involves really anything that makes you stand out or that you are really good at: fancy front-end animation, beautiful design, or clever API integration, for example. You have some time to wow us. Try to!" and I nearly built all of the extra credit mentioned in the actual project instructions',
      '"Science can amuse and fascinate us all, but it is engineering that changes the world." - Isaac Asimov',
      '"Real artists ship" - Steve Jobs',
      '"Wisdom Comes From Experience, And Experience Comes From Lack Of Wisdom." - Terry Pratchett'
    ]

    @array[rand(0..(@array.length-1))]
  end
end
