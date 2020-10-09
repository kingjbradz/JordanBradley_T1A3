help = ARGV[0]

help_doc = %(
As this program was written in the Ruby programming language,
it is recommended that you have it installed to get the most out of this application.

Also, since this application features the use of Ruby Gems,
it is recommended that you also have Bundler installed to allow the seamless installation of the app and its features.

Gems featured in this application include Colorize, Smarter_CSV, TTY-Table, TTY-Prompt, and TTY-Font.
They will be automatically installed alongside the application.
In the case of bundle installation not working properly, you can find the sources for said gems at http://rubygems.org.

Utilized Gems:

• Colorize (This adds color to the text.)

• Smarter_CSV
(This streamlines the process of reading the files the chore types and times are stored in.)

• TTY-Table
(This creates the tables the chore types and histories are presented in inside the 'read' section.)

• TTY-Prompt
(This creates the start up menu with the options.)

• TTY-Font
(This creates the title screen logo and the goodbye message.)

These gems are not exclusive to any device and can be used indiscriminately across MacOS, Windows, Linux, etc.

Opening

Inside terminal, change direction (press 'cd' and then the name of the folder) into the directory that you wish to store this item.
Copy the installation link from the GitHub source page (you will be able to find the link when clicking the green 'code' button in the top right corner)
and paste it into the command line and hit enter when you are in the directory.
Then, change direction one more time into the 'src' directory.
After this, type in and enter 'bundle install'. There, inside the src directory, run the following command:

bash run_chore_app.sh

Or, alternatively:

./run_chore_app.sh

This should open up the application. Alternatively, if you wish to open up this file in ruby, simple type in:

ruby main.rb

How to use:

Options Menu:

In this section, press the up and down keys on your keyboards to peruse the options,
and hit enter on your desired option.
Typing in inputs in this area is not possible.

'Do' Chores Section:

There will be a list of available chores, type in the number of the chore you wish to do.
After that, the application will ask for your name. Type in your name here.
Finally, confirm everything by typing in 'yes'.
Anything other than 'yes' typed in is not valid and will mean that the entry won't be logged.
After this section, you will be returned to the options menu.

Read Section:

In this section, you have two options.
The first is to peruse 'chore types', wherein you can see the list of chore types currently available.
To see this, just type in and enter either 'chore type' or 'chore types'.
After this, the app takes you back to the options menu.

The second is to go over the history of logged chores already done,
to see this section just type in 'chore history'.
After this, the app takes you back to the options menu.

Anything other than the above mentioned things typed in will return an 'Invalid' message.
After this, the app takes you back to the options menu.

Create Section:

Use this section to create new chores of your own.

After showing you the list of chores that already exist,
you are then asked to type in the title of the new chore you wish to create.

After entering that, the app will ask you to designate a number.

Finally, as with the 'do' section, confirm by typing 'yes'.
Anything other than that entered means your new chore won't be saved.

After this process, you are again returned to the options menu.

Edit Section:

Use this section to edit chores.

At the moment, only the items are shown to screen followed by a prompt asking you what you'd like to change.

However, I'm not finished with this part yet,
so nothing will happen if you type a value in besides an 'Invalid' message. Sorry!

Delete Section:

Use this section to delete chores.

As with the 'Edit' section, this area is also not done...
So upon typing in after seeing the list of chores and the
"What would you like to delete?" question, nothing will happen.
Apologies again!

Exit Process

This section will quit the application.

After selecting 'exit' at the bottom of the title screen,
a message will be shown, saying that the application is closing.
All you need to do to shut it down is type in 'yes',
just like the 'Do' and 'Create' sections.

Thank you!
)

puts help_doc