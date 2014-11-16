require "sinatra"
require "pony"

# get -> HTTP verb
# "/" -> URL
get "/" do
  erb :index, layout: :default
end

get "/contact" do
  erb :contact, layout: :default
end

post "/contact" do
  Pony.mail(to: "tam@codecore.ca",
            from: params[:email],
            reply_to: params[:email],
            subject: "#{params[:name]} contacted you!",
            body: params[:message],
            via: :smtp,
            via_options: {
              address: "smtp.gmail.com",
              port: "587",
              user_name: "#{ENV[user_name]}",
              password: "#{ENV[password]}",
              authentication: :plain,
              enable_starttls_auto: true
            })
  params.to_s
end

get "/hi" do
  "Hi There"
end

