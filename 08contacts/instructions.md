# Contacts

The project "A Night at the Movies" from Codecademy was interesting. Time to
bring it to the next level. You will code a program to manage contacts
information.

The name of the contact is their unique identifier and each contact has a
country, email, and phone number. The file `contact.rb` have already a data
structure with some contacts information. It is a requisite to use that data
structure as is, do not modify it in any way.

When the program is executed it should display a welcome message, a menu with
the available actions, and a prompt for the user to type an action.

```bash
$ ruby contacts.rb
--------------------------------------------------
Welcome to Contacts
--------------------------------------------------
What would you like to do next?
-- Type 'display' to display all contacts
-- Type 'add' to add a contact
-- Type 'show' to show the details of a contact
-- Type 'update' to update a contact
-- Type 'delete' to delete a contact
-- Type 'exit' to exit the program
action:
```

Your program should be able to manage all 6 actions. Let's go through an example
for each one.

## Display contacts

If the user types `display`, the program should print the subtitle "All your
contacts:" followed by a list of all the contact names (hyphenated):

```bash
$ ruby contacts.rb
--------------------------------------------------
Welcome to Contacts
--------------------------------------------------
What would you like to do next?
-- Type 'display' to display all contacts
-- Type 'add' to add a contact
-- Type 'show' to show the details of a contact
-- Type 'update' to update a contact
-- Type 'delete' to delete a contact
-- Type 'exit' to exit the program
action: display
--------------------------------------------------
All your contacts:
- Codeka
- Teddy
- Andre
--------------------------------------------------
What would you like to do next?
action:
```

Notice that the program doesn't finish but prompts the user for another action.
The program finishes only when the user types `exit`.

## Add a contact

If the user type `add`, the program should ask the user for a `Name`. If the
name doesn't exist already, then the program should ask the user for the
country, email, and phone (one at a time):

```bash
$ ruby contacts.rb
--------------------------------------------------
Welcome to Contacts
--------------------------------------------------
What would you like to do next?
-- Type 'display' to display all contacts
-- Type 'add' to add a contact
-- Type 'show' to show the details of a contact
-- Type 'update' to update a contact
-- Type 'delete' to delete a contact
-- Type 'exit' to exit the program
action: add
Name: Juan
--------------------------------------------------
Country: Peru
Email: juan@mail.com
Phone: +51 987654321
--------------------------------------------------
What would you like to do next?
action:
```

If the Name already exists, an error message is displayed:

```bash
$ ruby contacts.rb
--------------------------------------------------
Welcome to Contacts
--------------------------------------------------
What would you like to do next?
-- Type 'display' to display all contacts
-- Type 'add' to add a contact
-- Type 'show' to show the details of a contact
-- Type 'update' to update a contact
-- Type 'delete' to delete a contact
-- Type 'exit' to exit the program
action: add
Name: Teddy
--------------------------------------------------
Contact already exists
--------------------------------------------------
What would you like to do next?
action:
```

### Show a contact

If the user type `show`, the program should ask the user for a `Name`. If the
name exists, then the program should display a list with the country, email, and
phone of the contact:

```bash
$ ruby contacts.rb
--------------------------------------------------
Welcome to Contacts
--------------------------------------------------
What would you like to do next?
-- Type 'display' to display all contacts
-- Type 'add' to add a contact
-- Type 'show' to show the details of a contact
-- Type 'update' to update a contact
-- Type 'delete' to delete a contact
-- Type 'exit' to exit the program
action: show
Contact name: Teddy
--------------------------------------------------
Country: Peru
Email: Teddy@able.co
Phone: +51 987654321
--------------------------------------------------
What would you like to do next?
action:
```

If the Name doesn't exist, an error message is displayed:

```bash
$ ruby contacts.rb
--------------------------------------------------
Welcome to Contacts
--------------------------------------------------
What would you like to do next?
-- Type 'display' to display all contacts
-- Type 'add' to add a contact
-- Type 'show' to show the details of a contact
-- Type 'update' to update a contact
-- Type 'delete' to delete a contact
-- Type 'exit' to exit the program
action: show
Contact name: Otro Nombre
--------------------------------------------------
Contact doesn't exist
--------------------------------------------------
What would you like to do next?
action:
```

### Update a contact

If the user type `update`, the program should ask the user for a `Name`. If the
name exists, then the program should ask the user new values for the country,
email, and phone (one at a time):

```bash
$ ruby contacts.rb
--------------------------------------------------
Welcome to Contacts
--------------------------------------------------
What would you like to do next?
-- Type 'display' to display all contacts
-- Type 'add' to add a contact
-- Type 'show' to show the details of a contact
-- Type 'update' to update a contact
-- Type 'delete' to delete a contact
-- Type 'exit' to exit the program
action: update
Contact name: Teddy
--------------------------------------------------
Country: New Country
Email: new_mail@able.co
Phone: +51 999000111
--------------------------------------------------
What would you like to do next?
action:

```

If the Name doesn't exist, a message is displayed:

```bash
$ ruby contacts.rb
--------------------------------------------------
Welcome to Contacts
--------------------------------------------------
What would you like to do next?
-- Type 'display' to display all contacts
-- Type 'add' to add a contact
-- Type 'show' to show the details of a contact
-- Type 'update' to update a contact
-- Type 'delete' to delete a contact
-- Type 'exit' to exit the program
action: update
Contact name: Otro Nombre
--------------------------------------------------
Contact doesn't exist
--------------------------------------------------
What would you like to do next?
action:

```

### Delete a contact

If the user types `delete`, the program should ask the user for a `Name`. If the
name exists, then the program should remove it and display a confirmation
message:

```bash
$ ruby contacts.rb
--------------------------------------------------
Welcome to Contacts
--------------------------------------------------
What would you like to do next?
-- Type 'display' to display all contacts
-- Type 'add' to add a contact
-- Type 'show' to show the details of a contact
-- Type 'update' to update a contact
-- Type 'delete' to delete a contact
-- Type 'exit' to exit the program
action: delete
Contact name: Teddy
--------------------------------------------------
Teddy has been deleted
--------------------------------------------------
What would you like to do next?
action:
```

If the Name doesn't exist, a message is displayed:

```bash
$ ruby contacts.rb
--------------------------------------------------
Welcome to Contacts
--------------------------------------------------
What would you like to do next?
-- Type 'display' to display all contacts
-- Type 'add' to add a contact
-- Type 'show' to show the details of a contact
-- Type 'update' to update a contact
-- Type 'delete' to delete a contact
-- Type 'exit' to exit the program
action: delete
Contact name: Otro Nombre
--------------------------------------------------
Contact doesn't exist
--------------------------------------------------
What would you like to do next?
action:
```

### Exit de program

If the user types `exit`, the program should display a goodbye message and exit.

```bash
$ ruby contacts.rb
--------------------------------------------------
Welcome to Contacts
--------------------------------------------------
What would you like to do next?
-- Type 'display' to display all contacts
-- Type 'add' to add a contact
-- Type 'show' to show the details of a contact
-- Type 'update' to update a contact
-- Type 'delete' to delete a contact
-- Type 'exit' to exit the program
action: exit
Bye!
$
```

> Surely you will use some type of infinite loop to keep your program open while
> the user types the actions. When the user types exit, use a simple break to
> exit the infinite loop and let the program follow its course and finish by
> itself. DO NOT USE `exit`, `exit!`, `abort`, or nothing else.

### Multiple actions

As I mentioned, the program doesn't finish after each action but continues. The
following example is nothing new, just an example of multiple actions executed
one after the other. For example, I will `display` all the contacts, then `add`
a new contact, then `update` the same contact, and finally `delete` it. After
that I exit the program:

```bash
$ ruby contacts.rb
--------------------------------------------------
Welcome to Contacts
--------------------------------------------------
What would you like to do next?
-- Type 'display' to display all contacts
-- Type 'add' to add a contact
-- Type 'show' to show the details of a contact
-- Type 'update' to update a contact
-- Type 'delete' to delete a contact
-- Type 'exit' to exit the program
action: display
--------------------------------------------------
All your contacts:
- Codeka
- Teddy
- Andre
--------------------------------------------------
What would you like to do next?
action: add
Name: Juan
--------------------------------------------------
Country: Chile
Email: juan@chile.com
Phone: 876293828
--------------------------------------------------
What would you like to do next?
action: update
Contact name: Juan
--------------------------------------------------
Country: Peru
Email: new@juan.com
Phone: 999111666
--------------------------------------------------
What would you like to do next?
action: delete
Contact name: Juan
--------------------------------------------------
Juan has been deleted
--------------------------------------------------
What would you like to do next?
action: exit
Bye!
$
```
