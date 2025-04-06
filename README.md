# Christmas Piano


Name:Tudor Marinescu

Student Number: C24745999

Github: Starlitriver1234

# Video

https://youtu.be/4XkPsJ0fJPg

# Screenshots

![image](https://github.com/user-attachments/assets/5dbe9c74-040f-4710-a743-dbf5f3fdf892)

![image](https://github.com/user-attachments/assets/22406915-1e5c-4e03-9f56-045d56e1caed)

![image](https://github.com/user-attachments/assets/cfcd87ed-e46f-4993-bda1-012a02f760fb)

![image](https://github.com/user-attachments/assets/678ab1dd-060d-402c-aa37-62bac6bd106e)

# Description of the project

I decided to go with the Musical Instrument project and make an instrument that makes sound and is capable of composing and having fun while playing music.
I created a cute Christams inspired electric piano. To make it more interesting, I made cool looking assets in Procreate and combined different instruments for each note. Like this, the game's piano sounds are unique to itself. I put in 7 piano keys that can be played, which have the notes: C D E F G A B. I also put a special button that will play a chill elcectronic song to accompany you while you play the piano. Like this, it will feel like a concert and it will make the game more fun. The music can be turned on or off, so if someone wants only the piano experience, they can have it. The Christmas theme came from how close Christmas is and because I wanted to give it a cool aesthetic.

# Instructions for use

You have 8 buttons. 7 of them look the same and when pressed create a piano sound. There is also a button that says it plays music. Once pressed, a chill track will play to accompany your piano skills and it will loop till you press the button again, then the song will stop. If you want to put the song again, you can just press the button again, and it will start playing again.

# How it works:

Since it is a 2D game, it uses a 2D scene. At first, I created a sprite 2D for the background, then another for the first key. I created a script that plays a piano key every time the sprite is clicked. I also added a function which will change the sprite to a darker one once clicked so it will visualise the player's action. I also added a function that checks where you clicked and if it is on the sprite since I had a slight issue of the sound being triggered every time you left clicked. After this script for one of the keys was completed, I duplicated it a few times and changed the audio file that would be played from each of the child nodes of the sprite2D nodes. Like this, we now have 7 functional piano keys. In order to create the music play button, I used a button node and wrote a script which maily contains an if statement. If the player presses the button, play the track from the child node of the button node, if they don't, stop the song. In order to achieve the looping of the song, when I imported the wav, I selected loop forward in the importing menu of Godot.

# List of classes/assets in the project

I used a lot of assets for the game, and also replaced a lot of them since I changed the art style and the piano sounds quite a lot. So in order to keep it simple, I'll only mention the assets that are actually in the game. I didn't remove the unused ones so previous git commited versions of the game can still run properly. All of the assets such as sprites, backgrounds, piano keys and music have been created by myself in Procreate (an art program) and in Garageband (a music DAW)
| Class/asset | Source |
|-----------|-----------|
| Piano Key.png | Self made in Procreate |
| Piano Key2.png | Self made in Procreate |
| Piano Background.png | self made in Procreate |
| Demo Music.wav | Self made in Garageband |
| Note 1.wav | Self made in Garageband |
| Note 2.wav | Self made in Garageband |
| Note 3.wav | Self made in Garageband |
| Note 4.wav | Self made in Garageband |
| Note 5.wav | Self made in Garageband |
| Note 6.wav | Self made in Garageband |
| Note 7.wav | Self made in Garageband |
| sprite_2D.gd | Self written |
| button.gd | Self written |


# References
* Item 1
* Item 2

# What I am most proud of in the assignment

I am very proud that this is my first game I've ever made alone other than the Twine project I created at the start of the semester. It was both very challanging and very fun to create it. I loved trying new things and buttons and creating more art and sounds for the game. Small fun fact, the song you can play in the game is a concept song made for our Game Jam space game. I was very happy I got to use it in the end. I also loved creating a piano since I loved playing the piano since I was little and composing music is one of my favourite hobbies. In general it was an incerdibly fun experience and I'm very happy and proud of the game I created. I put a lot of passion and love into the project and I think it turned out even better than what I originnally intended.


# What I learned

I learned a lot about hpw to use Godot, especially in the gdscript departement, where it took me a while to get going. I also learned a lot more about how to make better assets for games, which will be very usefull since I tend to help a lot in my group projects by making the assets. I also learned how to use Github a whole lot better and I liked the secure feeling it gave me, knowing that if something crashes or my laptop breaks, my project is safe.
