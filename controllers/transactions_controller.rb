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
  erb(:new)
end

post '/transactions' do
  transaction = Transaction.new(params)
  transaction.save
  redirect to("/transactions")
end

get '/transactions/:id' do
  @transaction = Transaction.find(params['id'])
  @total_spent = Transaction.total
  erb(:show)
end

get '/transactions/:id/edit' do
  @merchants = Merchant.all
  @tags = Tag.all
  @transaction = Transaction.find(params['id'])
  @total_spent = Transaction.total
  erb(:edit)
end

post '/transactions/:id' do
  transaction = Transaction.find(params['id'])
  transaction.update
  redirect to "/transactions/#{params['id']}"
end

post '/transactions/:id/delete' do
  transaction = Transaction.find(params['id'])
  transaction.delete
  redirect to '/transactions'
end
