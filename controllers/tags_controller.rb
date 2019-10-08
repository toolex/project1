require_relative( '../models/transaction.rb' )
require_relative( '../models/tag.rb' )
require_relative( '../models/merchant.rb' )
also_reload( '../models/*' )

get '/new_tag' do
  @tags = Tag.all
  @total_spent = Transaction.total
  erb(:"tags/new_tag")
end

post '/tags/show' do
  tag = Tag.new(params)
  tag.save
  redirect to '/tags/show'
end

get '/tags/show' do
  @tags = Tag.all
  @total_spent = Transaction.total
  erb(:"tags/show")
end

post '/tags/:id/delete' do
  tag = Tag.find(params['id'])
  tag.delete
  redirect to '/tags/show'
end
