def drinks_available
  drinks = ["Water", "Water", "Water", "Orange Juice", "Tropical Juice", "Apple Juice", "Cranberry Juice", "Ribena", "Squash", "Coke", "Fanta", "Tea", "Hot Chocolate"]
# Water appears more than once to increase chances of Water being selected.
end
drinks = drinks_available.shuffle.first
check = ["HOT", "COLD", "FIZZY", "JUICE"]

hot_drinks = ["Tea", "Hot Chocolate"].shuffle.first
cold_drinks = ["Water", "Water", "Water", "Ribena", "Squash"].shuffle.first
fizzy_drinks =["Coke", "Fanta"].shuffle.first
juice_drinks = ["Apple Juice", "Tropical Juice","Cranberry Juice", "Orange Juice"].shuffle.first

puts "Do you have a preference for the type of drink? Please answer Y or N."

answer = gets.chomp

if answer == "Y" 
  puts "Please state : 'Hot' for hot drink options, 'Cold' for cold drink options, 'Fizzy' for fizzy drink options, 'Juice' for juice drink options:"
  preference = gets.chomp.upcase
  if preference === "HOT" then puts hot_drinks end
  if preference === "COLD" then puts cold_drinks end
  if preference === "FIZZY" then puts fizzy_drinks end
  if preference === "JUICE" then puts juice_drinks end
  if check.include?(preference) == false then puts "Must state either 'Hot', 'Cold', 'Fizzy', 'Juice'. This input is invalid." end

elsif answer == "N"
  drinks
  puts drinks
  
else 
  puts "Incorrect Input: Must be Y or N."
end
