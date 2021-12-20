favourite_type = ["English cuisine:", "Italian cuisine:", "Takeout:", "Chinese cuisine:", "Nigerian cuisine:"]
cuisine_shuffle = favourite_type.shuffle.first
check = ["English", "Italian", "Takeout", "Chinese", "Nigerian"]

def italian_meals 
  ["Pizza", "Cabonara", "Lasagne", "Spagetti", "Minestrone", "Ravioli", "Risotti", "Tagliatelle", "Gnocci"].shuffle.first
end

def english_meals
  ["Bangers and mash", "Fish and chips", "Sunday Roast"].shuffle.first
end

def take_out_meals
  ["McDonalds", "Dominoes", "KFC Salad", "Taco Bell", "Nandos", "Pizza Hut"].shuffle.first
end

def chinese_meals
  ["Chicken and Sweetcorn Soup & Special Fried Rice", "House Special & Dim Sum", "Chicken Chow Mein & Spring Rolls", "Sweet and Sour Chicken", "Prawn Chow Mein"].shuffle.first
end

def nigerian_meals
  ["Pounded Yam", "Jollof Rice", "Rice & Stew", "Garri", "Eba"].shuffle.first
end 

puts "Do you have a preference for a cuisine? Please answer Y or N. If so the options available are Italian, English, Takeout, Chinese and Nigerian."

answer = gets.chomp
if answer == "Y"
  puts "What is the cuisine?"
  cuisine_choice = gets.chomp.capitalize()
  if cuisine_choice == "English" then puts english_meals end
  if cuisine_choice == "Italian" then puts italian_meals end
  if cuisine_choice == "Takeout" then puts take_out_meals end
  if cuisine_choice == "Chinese" then puts chinese_meals end
  if cuisine_choice == "Nigerian" then puts nigerian_meals end 
  if check.include?(cuisine_choice) == false then puts "This is not an option." end

  elsif answer == "N"
  cuisine_shuffle 
  if cuisine_shuffle == "English cuisine:"
     puts "English:" 
     puts english_meals 
  elsif cuisine_shuffle == "Italian cuisine:" 
     puts "Italian:"
     puts italian_meals
  elsif cuisine_shuffle == "Takeout:"  
     puts "Takeout:"
     puts take_out_meals 
  elsif cuisine_shuffle == "Chinese cuisine:" 
     puts "Chinese:"
     puts chinese_meals 
  else cuisine_shuffle == "Nigerian cuisine:"
     puts "Nigerian:"
     puts nigerian_meals 
end
else 
  puts "Incorrect Input: Must be Y or N."
end
