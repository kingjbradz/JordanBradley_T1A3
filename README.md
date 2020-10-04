#Statement of Purpose and Scope

###Introduction

This program is a task manager for chores that need to be done in shared households. Any member of the household with access to the program can create as well as edit and delete from the list of chore types available, while also being able to record what chores have done by whom, each with a unique time stamp that is saved to a history feature.

###Purpose

Since I live in a shared household and have a vastly different schedule from my two roommates, sharing mutual responsibilities such as feeding pets, washing dishes, vacuuming or taking the trash out can have difficulties owing to lapses in communication. 
For example, I may have fed the dogs within the hour, but if I suddenly leave or otherwise busy my lapse in communication ends with my room mate feeding them again. Some issues can be minute whilst others if left unfettered can create longer lasting problems, such as pet weight gain or excessive dirtiness. I figured if there was a way everyone could keep up to date with what's been done and what hasn't, these issues could be avoided.

###Scope

The target audience is not specific in the sense that I am targeting anyone from a specific cultural, economic or sociological background. It's specifically targeted to those who live in shared accommodation. This could theoretically entail families, share houses, dorms, couples, or basically any location that has 2 or more individuals living in it. Because of the relative intended simplicity of the functions and interface, the app would be able to be used to by people from a wide variety of age groups, meaning both adults and children alike will be able to communicate what chores they have and haven't done effectively.

####How the target audience would use the application:

Once opening the program up on terminal, the end user would need to select one of 6 commands on the main interface, namely being; Do Chore, Read, Create, Edit, Delete, Exit. 
The user can type in any one of those words featured in (uppercase, lowercase or a mixture thereof is fine) the menu and go to the next prompt, any invalid inputs will result in an error message, taking them back to the option menu. 
In the 'Do' section, the user can state what chore they have completed from a printed list sourced from the chore list folder. 
In the 'Read' section, there are 2 options, 1 is to read the list of chore types, the other is a history of chores done.
In the 'Create' section, the user can create a new chore type, with that type being saved to be able to use in future instances of the 'Do' function. 
In the 'Edit' section, users can change the information of items saved in the chore list file.
 In the 'Delete' section, users can delete items from the chore list file. In the 'Exit' sections, users can exit the program.

Any users who use the program thereafter will be able to see any content that is been saved into the list from the 'Create' and 'Edit' options in the chore list section of the 'Read' area, whilst also being able to browse a chore list history in the same section if the previous user had ran any instances of the 'Do' function.



#List of features

**Do:**

The main feature of the application. A simple process wherein the user has a preloaded set of options to choose from that each represent a chore that can be done around the house, each prefaced with a number. The user types in the relevant number for the desired chore, followed by a follow-up prompt asking the user for their name. After typing in their name, the application then requests that the user confirm the details by inputting 'yes', after this the data is written to a 'Chore History' file that logs the date, time, type of chore and relevant persons name.

**Read:**

This option is split into two features. Upon loading this section, the user is prompted by a request asking if the user would either like to see 'Chore Types' or 'Chore History'. If the user selects chore types, they will see the relevant types of chore available as per the Do section. If the user selects 'Chore History', they will be able to see all previous chores logged with relevant dates, times, chore types and names of the persons who did said chore.

**Create:**

This option allows the user to create their own chores. The user will initially be prompted in to input a new chore type, followed by a number they wish to designate said chore. The user is then prompted to confirm the entered information is to their liking, if yes the data is saved to the 'Chore Types' file and would be available to peruse over in the 'Do' and 'Read' sections. If the user selects no, they are redirected to the title screen and no data is saved.

**Edit:**

This option allows the user to edit the types of chores that are already available. The types of chores available are first outputted, with the user selecting which option they'd like to change. After inputting the new information, they are prompted to confirm they are happy with the changes. If yes, the data is written over. If not, they return to the title screen with no data saved.

**Delete:**
 
This option allows the user to delete any of the chore types currently available. They types of chores available for deletion are first put to the screen, with the user selecting which option they'd like to delete. After typing in the specific chore type, they are then asked to confirm if they are sure they want it deleted. If yes, the item is deleted. If no, they are sent back to the title screen with no changes to the data.

#Outline of user interaction

####**1)**
Application is opened on terminal.

####**2)**
***Options Menu***

**2a)**
Options menu featuring each option available to the user.
Text explaining the options is output, affirming to the user that they need to select their desired option to follow through over to the next section. 
These options are labeled 'Do', 'Read', 'Create', 'Edit', 'Delete', and 'Exit'.
For example, to peruse the 'read' section, the user would need to press down on their arrow keys and select enter on 'read'.

**2b)**
Errors in this section are bypassed due to a lack of text input.


####**3)**
#####***'Do' section***

**3a)**
After selecting 'do' in the options menu, the available chores are output in a numerical list starting from 1, with each number assigned a chore. 

**3b)**
The user then inputs the number relevant to the chore they wish to do.

**3c)**
After this, a message is displayed prompting them to enter their name.

**3d)**
Once entering that, the final prompt is shown, confirming if they would like to go through with this action.

**3e)**
If the user enters 'yes', a message notifying the user that the chore has been logged in displayed, followed by the previously inputted name, chore type, date and time written to the 'chore history' CSV file. The user is then returned to the options menu.

**3f)**
If the user enters any other answer besides 'yes', a message is displayed to the user notifying them that the information will not be saved, and they are then returned to the options menu.

**3g)**
In terms of error handling, in the initial input if any value inconsistent with the numbers displayed is entered, at the end of the process an error message displaying the invadility of such is shown, followed by a return to the options menu.


####**4)**
#####***Read section***

**4a)**
After selecting 'read' in the options menu, a message asking the user whether they want to read 'chore types' or 'chore history' is displayed. 

**4b)**
The user then types in the relevant item they wish to view.

**4c)**
If the user enters 'chore types', the 'chore types' CSV file contents are output, showing the user the types of chores available.

**4d)**
If the user enters 'chore history', the 'chore history' CSV file contents are then output, showing the user a full history of chores logged with previously entered chore types, names, dates and times. The user is then returned to the options menu.

**4e)**
If any value inconsistent with 'chore type', 'chore types', or 'chore history' is entered, an error message is displayed notifying them of the invalidility, followed by a return to the options menu.

####**5)**
#####***Create section***

**5a)**
After selecting 'create' in the options section, the contents of the 'chore types' CSV file is output, followed by a message asking the user what extra item they'd like to create.

**5b)**
The user then inputs the title of the new chore type they wish to enter.

**5c)**
A message is output asking the user to assign a numerical designation for the new chore type.

**5d)**
The user then inputs a number they wish to assign.

**5e)**
A message asking the customer to confirm the chore type and numerical designation is displayed.

**5f)**
If the user types 'yes', the new chore type and its numerical designation is saved to the 'chore types' CSV file. The user is then returned to the options menu.

**5g)**
If any answer other than 'yes' is entered in the final input, a message to the user communicating that the values will not be saved is displayed, followed by a return to the options menu.



####**6)**
#####***Edit section***

**6a)**
If the user selects 'edit' in the options menu, the contents of the 'chore types' CSV are displayed, asking the user what specific item they'd like to edit.

**6b)**
The user then inputs the name of the chore type they'd like to edit.

**6c)**
If the values entered are consistent with any of the items available, a message is displayed asking the user what they'd like to change the item to.

**6d)**
The user then types in the name of the new value.

**6e)**
A message displaying the edited chore type is displayed, the user is then returned to the options menu.

**6f)**
In the initial input section, if the values entered are inconsistent with the chore tyoes stored, an error message is displayed and the user is returned to the options menu. 


####**7)**
#####***Delete section***

**7a)**
If the user selects 'delete' on the options menu, the 'chore types' CSV file contents are displayed to the user, then asking them what item they would like to delete.

**7b)**
The user then types in the value of the item they'd like to delete.

**7c)**
If the entered item is valid, the user is then prompted to confirm their deletion.

**7d)**
A message acknowledging the item's deletion is output to the user, and they are then returned to the options menu.

**7e)**
If the initial inputs value is not valid, an error message is shown. The user is then returned to the options menu.

####**8)**
#####***Exit process***

**8a)**
if the user selects 'exit' on the options menu, a message relaying the application will be closed will be sent, along with a request that the user confirm they'd like to do so by typing 'yes'.

**8b)**
If the user inputs 'yes', a goodbye message is shown and the application is closed.

**8c)**
If the user inputs anything other than 'yes', an error message is shown and the user is returned to the options menu.

#Control flow diagram

![Option Menu](/docs/option_menu_(prompt_version).png)

!['Do' Process](/docs/do_process.png)

![Read Process](/docs/read_process.png)

![Create Process](/docs/create_process.png)

![Edit Process](/docs/edit_process.png)

![Delete Process](/docs/delete_process.png)

![Exit Process](/docs/exit_process.png)

#Implementation plan

[Trello link](https://trello.com/b/eymEHjfk/home-task-app)

#GitHub (source repository)

[GitHub](https://github.com/kingjbradz/JordanBradley_T1A3)

#Help

###Introduction

As this program was written in the Ruby programming language, it is recommended that you have it installed to get the most out of this application.

[Link for Ruby](https://www.ruby-lang.org/en/downloads/)

Also, since this application features the use of Ruby Gems, it is recommended that you also have Bundler installed to allow the seamless installation of the app and its features.

[Link for Bundler](https://bundler.io/)

Gems featured in this application include Colorize, Smarter_CSV, TTY-Table, TTY-Prompt, and TTY-Font. In the case of bundle installation not working properly, you can find the sources for said gems here.

• [Colorize](https://rubygems.org/gems/colorize/versions/0.8.1)
This adds color to the text.

• [Smarter_CSV](https://rubygems.org/gems/smarter_csv/versions/1.1.4)
This streamlines the process of reading the files the chore types and times are stored in.

• [TTY-Table](https://rubygems.org/gems/tty-table/versions/0.10.0)
This creates the tables the chore types and histories are presented in inside the 'read' section.

• [TTY-Prompt](https://rubygems.org/gems/tty-prompt)
This creates the start up menu with the options.

• [TTY-Font](https://rubygems.org/gems/tty-font/versions/0.2.0)
This creates the title screen logo and the goodbye message.

These gems are not exclusive to any device and can be used indiscriminately across MacOS, Windows, Linux, etc.

###Opening

Inside terminal, change direction (press 'cd' and then the name of the folder) into the directory that you wish to store this item. 
Copy the installation link from the GitHub source page (you will be able to find the link when clicking the green 'code' button in the top right corner) and paste it into the command line and hit enter when you are in the directory.
Then, change direction one more time into the 'src' directory.
After this, type in and enter 'bundle install'.
There, inside the src directory, run the following command:

bash run_chore_app.sh

Or, alternatively:

./run_chore_app.sh

This should open up the application.
Alternatively, if you wish to open up this file in ruby, simple type in:

ruby main.rb

###How to use: 

**Options Menu:**

In this section, press the up and down keys on your keyboards to peruse the options, and hit enter on your desired option.

Typing in inputs in this area is not possible.

**'Do' Chores Section**

There will be a list of available chores, *type* in the number of the chore you wish to do.

After that, the application will ask for your name. Type in your name here.

Finally, confirm everything by typing in 'yes'. Anything other than 'yes' typed in is not valid and will mean that the entry won't be logged. After this section, you will be returned to the options menu.

**Read Section**

In this section, you have two options.

The first is to peruse 'chore types', wherein you can see the list of chore types currently available.
To see this, just type in and enter either 'chore type' or 'chore types'.
After this, the app takes you back to the options menu.

The second is to go over the history of logged chores already done, to see this section just type in 'chore history'.
After this, the app takes you back to the options menu.

Anything other than the above mentioned things typed in will return an 'Invalid' message.
After this, the app takes you back to the options menu.

**Create Section**

Use this section to create new chores of your own.

After showing you the list of chores that already exist, you are then asked to type in the title of the new chore you wish to create.

After entering that, the app will ask you to designate a number.

Finally, as with the 'do' section, you just need to confirm that you'd like to follow through with a confirmation by typing 'yes'. Anything other than that entered means your new chore won't be saved.

After this process, you are again returned to the options menu.

**Edit Section**

Use this section to edit chores.

At the moment, only the items are shown to screen folllowed by a prompt asking you what you'd like to change.

However, I'm not finished with this part yet, so nothing will happen if you type a value in besides an 'Invalid' message. Sorry!

**Delete Section**

Use this section to delete chores.

As with the 'Edit' section, this area is also not done... So upon typing in after seeing the list of chores and the "What would you like to delete?" question, nothing will happen. Apologies again!

**Exit Process**

This section will quit the application.

After selecting 'exit' at the bottom of the title screen, a message will be shown, saying that the application is closing. All you need to do to shut it down is type in 'yes', just like the 'Do' and 'Create' sections.

Thank you!