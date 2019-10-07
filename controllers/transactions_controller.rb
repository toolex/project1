require_relative( '../models/transaction.rb' )
require_relative( '../models/tag.rb' )
require_relative( '../models/merchant.rb' )
also_reload( '../models/*' )

get '/transactions' do
  @transactions = Transaction.all
  erb(:transactions)
end
