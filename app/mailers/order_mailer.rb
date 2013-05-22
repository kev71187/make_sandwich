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
    attachments.inline["sandwich.jpg"] = File.read(ActionController::Base.helpers.asset_path("#{Rails.root}/app/assets/images/#{@order.sandwich.title}.jpg"))
    mail to: user.email, subject: "Favor pleaseeee! :)"
  end

  def random_quote
    @array = [
      'I originally built this app with only theses instructions: "**make_sandwich is meant to test two primary categories: your proficiency in the basics of a Rails app and your personal coding strengths. The former includes creating an app, checking it in to Git multiple times as you work on it, pushing it to Heroku, and creating tests for your code. The latter involves really anything that makes you stand out or that you are really good at: fancy front-end animation, beautiful design, or clever API integration, for example. You have some time to wow us. Try to!"',
      '"Science can amuse and fascinate us all, but it is engineering that changes the world." - Isaac Asimov',
      '"Real artists ship" - Steve Jobs',
      '"Wisdom Comes From Experience, And Experience Comes From Lack Of Wisdom." - Terry Pratchett',
      (Typhoeus::Request.get("http://www.iheartquotes.com/api/v1/random")).body
    ]
    
    @array[rand(0..(@array.length-1))].to_s.html_safe
  end
end
