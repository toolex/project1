require_relative("../models/merchant")
require_relative("../models/tag")
require_relative("../models/transaction")

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

merchant1 = Mechant.new({"name" => "Tesco"})
merchant2 = Mechant.new({"name" => "The Vue"})
merchant3 = Mechant.new({"name" => "Lothian Buses"})
merchant4 = Mechant.new({"name" => "British Gas"})
merchant5 = Mechant.new({"name" => "Bob the Electrician"})

merchant1.save
merchant2.save
merchant3.save
merchant4.save
merchant5.save

transaction1
