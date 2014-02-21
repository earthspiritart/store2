namespace :report do

  desc "Counts the number of MODEL in the store"
  task :counts => :environment do
    if ENV["MODEL"].present?
      model = ENV["MODEL"].singularize.capitalize.constantize
      count = model.count
      puts "we have #{count} #{model.name.downcase.pluralize}"
    else
      puts "Give us a model"
  # end

  #   desc "Counts the number of Customers"
  #   task :customers => :environment do
    
  #   count = Customer.count
  #   puts "We have #{count} customers"
  # end

  #   desc "Counts the number of Orders"
  #   task :orders => :environment do
    
  #   count = Order.count
    end
  end
end