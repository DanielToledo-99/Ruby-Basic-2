contacts = {
  "Codeka" => {
    "country" => "Peru",
    "email" => "karem@able.co",
    "phone" => "+51 987654321"
  },
  "Teddy" => {
    "country" => "Bolivia",
    "email" => "teddy@able.co",
    "phone" => "+51 987654321"
  },
  "Andre" => {
    "country" => "Peru",
    "email" => "atavara@able.co",
    "phone" => "+51 9871236547"
  }
}

# Modify the file below this line
# --------------------------------------------------

contacts = {
  "Codeka" => {
    "country" => "Peru",
    "email" => "karem@able.co",
    "phone" => "+51 987654321"
  },
  "Teddy" => {
    "country" => "Bolivia",
    "email" => "teddy@able.co",
    "phone" => "+51 987654321"
  },
  "Andre" => {
    "country" => "Peru",
    "email" => "atavara@able.co",
    "phone" => "+51 9871236547"
  }
}

# Modify the file below this line
# --------------------------------------------------

line = "--------------------------------------------------"

puts line
puts "Welcome to Contacts"
puts line
puts "What would you like to do next?
  -- Type 'display' to display all contacts
  -- Type 'add' to add a contact
  -- Type 'show' to show the details of a contact
  -- Type 'update' to update a contact
  -- Type 'delete' to delete a contact
  -- Type 'exit' to exit the program"

loop do
  puts line
  puts "What would you like to do next?"
  print "action: "
  action = gets.chomp

  case action
  when "display"
    puts line
    puts "All your contacts:"
    contacts.each_key { |name| puts "- #{name}" }
  when "add"
    print "Name: "
    name = gets.chomp
    puts line

    if contacts[name]
      puts "Contact already exists"
      next
    end

    print "Country: "
    country = gets.chomp
    print "Email: "
    email = gets.chomp
    print "Phone: "
    phone = gets.chomp

    contacts[name] = { "country" => country, "email" => email, "phone" => phone }
  when "show"
    print "Contact name: "
    name = gets.chomp

    contact = contacts[name]
    puts line

    unless contact
      puts "Contact doesn't exist"
      next
    end

    puts "Country: #{contact['country']}"
    puts "Email: #{contact['email']}"
    puts "Phone: #{contact['phone']}"

  when "update"
    print "Contact name: "
    name = gets.chomp

    contact = contacts[name]
    puts line

    unless contact
      puts "Contact doesn't exist"
      next
    end

    print "Country: "
    country = gets.chomp
    print "Email: "
    email = gets.chomp
    print "Phone: "
    phone = gets.chomp

    contact["country"] = country
    contact["email"] = email
    contact["phone"] = phone

  when "delete"
    print "Contact name: "
    name = gets.chomp

    contact = contacts[name]
    puts line

    unless contact
      puts "Contact doesn't exist"
      next
    end

    contacts.delete(name)
    puts "#{name} has been deleted"

  when "exit"
    puts "Bye"
    break
  else
    puts "Invalid action"
  end
end
