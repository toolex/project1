require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/merchants_controller')
require_relative('controllers/tags_controller')
require_relative('controllers/transactions_controller')

get '/' do
  @total_spent = Transaction.total
  erb( :index )
end
