require "sinatra"
require "pony"
require "data_mapper"

DataMapper::setup(:default, 
                  "sqlite3://#{Dir.pwd}/contact.db")

# DataMapper will look for a table named contacts
class Contact
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :email, String
  property :message, Text
  property :department, String

end

Contact.auto_upgrade!

# get -> HTTP verb
# "/" -> URL
get "/" do
  erb :index, layout: :default
end

get "/contact" do
  erb :contact, layout: :default
end

get "/all" do
  # we instantiate a variable that is accessible 
  # in the views (with an @ before it)
  # Contact.all fetches all the recrods for Contact
  # from the database (contacts table).
  @contacts = Contact.all
  erb :all, layout: :default
end

get "/details/:id" do |id|
  @contact = Contact.get id
  erb :details, layout: :default
end

post "/contact" do
  Contact.create(name: params[:name],
                 email: params[:email],
                 department: params[:department],
                 message: params[:message])
  erb :thank_you, layout: :default
  # Pony.mail(to: "tam@codecore.ca",
  #           from: params[:email],
  #           reply_to: params[:email],
  #           subject: "#{params[:name]} contacted you!",
  #           body: params[:message],
  #           via: :smtp,
  #           via_options: {
  #             address: "smtp.gmail.com",
  #             port: "587",
  #             user_name: "#{ENV[user_name]}",
  #             password: "#{ENV[password]}",
  #             authentication: :plain,
  #             enable_starttls_auto: true
  #           })
  # params.to_s
end

get "/hi" do
  "Hi There"
end

