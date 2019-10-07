require_relative("../app.rb")
require_relative( '../models/transaction.rb' )
require_relative( '../models/tag.rb' )
require_relative( '../models/merchant.rb' )
also_reload( '../models/*' )
require("pry")

get '/transactions' do
  @transactions = Transaction.all
  erb(:transactions)
end

get '/test' do
  @transactions = Transaction.all
  erb(:test)
end

binding.pry
nil
