require_relative("../models/merchant")
require_relative("../models/tag")
require_relative("../models/transaction")
require("pry")

Transaction.delete_all
Tag.delete_all
Merchant.delete_all


tag1 = Tag.new({"type" => "Groceries"})
tag2 = Tag.new({"type" => "Leisure"})
tag3 = Tag.new({"type" => "Transport"})
tag4 = Tag.new({"type" => "Utilities"})
tag5 = Tag.new({"type" => "Other"})

tag1.save
tag2.save
tag3.save
tag4.save
tag5.save

merchant1 = Merchant.new({"name" => "Tesco"})
merchant2 = Merchant.new({"name" => "The Vue"})
merchant3 = Merchant.new({"name" => "Lothian Buses"})
merchant4 = Merchant.new({"name" => "British Gas"})
merchant5 = Merchant.new({"name" => "Bob the Electrician"})

merchant1.save
merchant2.save
merchant3.save
merchant4.save
merchant5.save

transaction1 = Transaction.new({
  "merchant_id" => merchant1.id,
  "tag_id" => tag1.id,
  "amount" => 50
  })

transaction2 = Transaction.new({
  "merchant_id" => merchant2.id,
  "tag_id" => tag2.id,
  "amount" => 10
  })

transaction3 = Transaction.new({
  "merchant_id" => merchant3.id,
  "tag_id" => tag3.id,
  "amount" => 1.70
  })

transaction4 = Transaction.new({
  "merchant_id" => merchant4.id,
  "tag_id" => tag4.id,
  "amount" => 100
  })

transaction5 = Transaction.new({
  "merchant_id" => merchant5.id,
  "tag_id" => tag5.id,
  "amount" => 34.69
  })

transaction1.save
transaction2.save
transaction3.save
transaction4.save
transaction5.save

# 
#
# binding.pry
# nil
