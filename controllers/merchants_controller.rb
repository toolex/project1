require_relative( '../models/merchant.rb' )
also_reload( '../models/*' )

get '/transactions/new_merchant' do
  @merchants = Merchant.all
  @total_spent = Transaction.total
  erb(:new_merchant)
end

post '/transactions' do
  transaction = Merchant.new(params)
  transaction.save
  redirect to("/transactions")
end
