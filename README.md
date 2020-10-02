#Statement of Purpose and Scope

###Introduction

This program is a task manager for chores that need to be done in shared households. Any member of the household with access to the program can create as well as edit and delete from the list of chore types available, while also being able to record what chores have done by whom, each with a unique time stamp that is saved to a history feature.

###Purpose

Since I live in a shared household and have a vastly different schedule from my two roommates, sharing mutual responsibilities such as feeding pets, washing dishes, vacuuming or taking the trash out can have difficulties owing to lapses in communication. 
For example, I may have fed the dogs within the hour, but if I suddenly leave or otherwise busy my lapse in communication ends with my room mate feeding them again. Some issues can be minute whilst others if left unfettered can create longer lasting problems, such as pet weight gain or excessive dirtiness. I figured if there was a way everyone could keep up to date with what's been done and what hasn't, these issues could be avoided.

###Scope

The target audience is not specific in the sense that I am targeting anyone from a specific cultural, economic or sociological background. It's specifically targeted to those who live in shared accommodation. This could theoretically entail families, share houses, dorms, couples, or basically any location that has 2 or more individuals living in it. Because of the relative intended simplicity of the functions and interface, the app would be able to be used to by people from a wide variety of age groups, meaning both adults and children alike will be able to communicate what chores they have and haven't done effectively.

####How the target audience would use the application:

Once opening the program up on terminal, the end user would need to type of 6 commands, namely being; Do, Read, Create, Edit, Delete, Exit. The user can type in any one of those words featured in (uppercase, lowercase or a mixture thereof is fine) the menu and go to the next prompt, any invalid inputs will result in an error message, taking them back to the option menu. In the 'Do' section, the user can state what chore they have completed from a printed list sourced from the chore list folder. In the 'Read' section, there are 2 options, 1 is to read the list of chore types, the other is a history of chores done. In the 'Create' section, the user can create a new chore type, with that type being saved to be able to use in future instances of the 'Do' function. In the 'Edit' section, users can change the information of items saved in the chore list file. In the 'Delete' section, users can delete items from the chore list file. In the 'Exit' sections, users can exit the program.

Any users who use the program thereafter will be able to see any content that is been saved into the list from the 'Create' and 'Edit' options in the chore list section of the 'Read' area, whils also being able to browse a chore list history in the same section if the previous user had ran any instances of the 'Do' function.



#List of features

**Do:**

The main feature of the application. A simple process wherein the user has a preloaded set of options to choose from that each represent a chore that can be done around the house, each prefaced with a number. The user types in the relevant number for the desired chore, followed by a follow-up prompt asking the user for their name. After typing in their name, the application then requests that the user confirm the details by inputting 'yes', after this the data is written to a 'Chore History' file that logs the date, time, type of chore and relevant persons name.

**Read:**

This option is split into two parts. Upon loading this section, the user is prompted by a request asking if the user would either like to see 'Chore Types' or 'Chore History'. If the user selects chore types, they will see the relevant types of chore available as per the Do section. If the user selects 'Chore History', they will be able to see all previous chores logged with relevant dates, times, chore types and names of the persons who did said chore.

**Create:**

This option allows the user to create their own chores. The user will initially be prompted in to input a new chore type, followed by a number they wish to designate said chore. The user is then prompted to confirm the entered information is to their liking, if yes the data is saved to the 'Chore Types' file and would be available to peruse over in the 'Do' and 'Read' sections. If the user selects no, they are redirected to the title screen and no data is saved.

**Edit:**

This option allows the user to edit the types of chores that are already available. The types of chores available are first outputted, with the user selecting which option they'd like to change. After inputting the new information, they are prompted to confirm they are happy with the changes. If yes, the data is written over. If not, they return to the title screen with no data saved.

**Delete:**
 
This option allows the user to delete any of the chore types currently available. They types of chores available for deletion are first put to the screen, with the user selecting which option they'd like to delete. After typing in the specific chore type, they are then asked to confirm if they are sure they want it deleted. If yes, the item is deleted. If no, they are sent back to the title screen with no changes to the data.

#Outline of user interaction



#Control flow diagram

![Option Menu](/docs/option_menu.png)

!['Do' Process](/docs/do_process.png)

![Read Process](/docs/read_process.png)

![Create Process](/docs/create_process.png)

![Edit Process](/docs/edit_process.png)

![Delete Process](/docs/delete_process.png)

![Exit Process](/docs/exit_process.png)

#Implementation plan

[Trello link](https://trello.com/b/eymEHjfk/home-task-app)

#Help