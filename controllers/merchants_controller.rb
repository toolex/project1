require_relative( '../models/transaction.rb' )
require_relative( '../models/tag.rb' )
require_relative( '../models/merchant.rb' )
also_reload( '../models/*' )

get '/new_merchant' do
  @merchants = Merchant.all
  @total_spent = Transaction.total
  erb(:"merchants/new_merchant")
end

post '/new_merchant' do
  merchant = Merchant.new(params)
  merchant.save
  redirect to("/merchants/show")
end

get '/merchants/show' do
  @merchants = Merchant.all
  @total_spent = Transaction.total
  erb(:"merchants/show")
end

post '/merchants/:id/delete' do
  merchant = Merchant.find(params['id'])
  merchant.delete
  redirect to '/merchants/show'
end
