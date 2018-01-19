require 'csv'

# Read file line by line

CSV.foreach('customers.csv') do |row|
  puts row.inspect
end

# counts average money spent per customer

average_money_spent = Array.new
CSV.foreach('customers.csv', converters: :numeric) do |row|
    average_money_spent << row[2] / row[1]
end

# To each row (i.e. array) put a new cell (i.e. element) at the end - the average money spent

customers_array = CSV.read('customers.csv')
customers_array.each do |customer|
  customer << average_money_spent[0]
  average_money_spent.delete_at(0)
end

# Put the new array to the csv file

CSV.open('customers.csv', 'w') do |file|
  customers_array.each do |row_array|
    file << row_array
  end
end

# check
puts "-------- ROWS AFTER ADDING AVERAGE MONEY SPENT --------"

CSV.foreach('customers.csv') do |row|
  puts row.inspect
end
