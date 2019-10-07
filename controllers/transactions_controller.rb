require_relative("../app.rb")
require_relative( '../models/transaction.rb' )
require_relative( '../models/tag.rb' )
require_relative( '../models/merchant.rb' )
also_reload( '../models/*' )
require("pry")


get '/transactions' do
  @transactions = Transaction.all
  @total_spent = Transaction.total
  erb(:transactions)
end


get '/transactions/new' do
  @merchants = Merchant.all
  @tags = Tag.all
  @transactions = Transaction.all
  @total_spent = Transaction.total
  erb(:"transactions/new")
end

post '/transactions' do
  transaction = Transaction.new(params)
  transaction.save
  redirect to("/transactions")
end
