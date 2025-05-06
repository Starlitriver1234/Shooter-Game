# Save the Ghosts!


Name:Tudor Marinescu

Student Number: C24745999

Github: Starlitriver1234

# Video






# Screenshots
![image](https://github.com/user-attachments/assets/6bad8b3e-3dda-48d6-873f-071979be7277)
![image](https://github.com/user-attachments/assets/3f1724a4-d32e-41ac-8001-8d287bc097da)
![image](https://github.com/user-attachments/assets/66191802-32db-4f8a-b97d-324c6719edfd)
![image](https://github.com/user-attachments/assets/e5a2a777-701e-46b4-8131-25624ea48939)
![image](https://github.com/user-attachments/assets/1a204d53-5566-4741-8ab7-79072c37b79b)
![image](https://github.com/user-attachments/assets/fd649c03-d2f5-440d-9f39-fc3cd42f3edc)
![image](https://github.com/user-attachments/assets/ecd0d57a-ee54-4178-9374-e2d7d132c6fe)
![image](https://github.com/user-attachments/assets/b1486cf0-bcb8-443e-a97f-f8e3f02e22ac)






# Description of the project
The game is a 2D space shooter with a magical and positive twist. You play as the king of ghosts and spirits and are trying to help souls move on peacefully. Some ghosts lost their memories, which brings them great sorrow, but the king has the ability to restore those memories and remind them who they are. You must shoot at every ghost your magical powers and restore their memories, making them happy once more and giving them peace.


# Instructions for use
You can move in every direction and have in total 4 lives. Use them wisely in order to save as many ghosts as possible. Based on how many you rescued, you get a score at the end. I used as inspiration old arcade games in order to make the player want to do better and save more of the ghosts.


# How it works:
Save the Ghosts! uses a few scenes and then instantiates them into the main game scene. Ghosts use spawners that are off screen in order to appear. Each spawner activates randomly and then the ghosts traverses the entire screen, dissapearing automatically when they are once more off screen. The player uses magial orbs in order to save the ghosts, which are instantiated into the scene every time they press the space bar or shift.The moment the orb gets off screen or touches a ghost, it dissapears. When touched by one of these orbs, a ghost will change its sprite to a happy one before vanishing. For this, I created a signal with a timer and queue_free(). Your score will also go up by 100, this is done using a function called _on_enemy_saved. This function also plays a sound for the enemy being saved and updates the score in the UI. If the player gets hit by a ghost, the signal took_damage is triggered, the ghost is still saved, but you lose a life. Another function takes care of this, making sure the change appears in the UI as well. An if statment checks if your lives are 0 and when they are, the game over screen is instantiated into the game. The song also changes to a sadder and calmer one. Your final score will be displayed and also a button to retry the game, which reloads the main game scene.


# List of classes/assets in the project


| Class/asset | Source |
|-----------|-----------|
| Ghost King.png | Self made in Procreate |
| Happy Ghost.png | Self made in Procreate |
| Heart.png | self made in Procreate |
| Power.png | self made in Procreate |
| Stars.png | self made in Procreate |
| Sad Ghost.png | self made in Procreate |
| Ghost Game Music.mp3 | Self made in Garageband |
| Ghost Saved.mp3 | Self made in Garageband |
| Hit.mp3 | Self made in Garageband |
| Magic.mp3 | Self made in Garageband |
| Game Over.mp3 | Self made in Garageband |

| enemy.gd | Self written |
| enemy_spawner.gd | Self written |
| game.gd | Self written |
| game_over_screen.gd | Self written |
| hud.gd | Self written |
| player.gd | Self written |
| rocket.gd | Self written |

# What I am most proud of in the assignment
I am very proud of this game since its my first game on a bigger scale with more complexity such as mechanics, player movement and enemies. Its also the third game I ever made on my own! I was very passionate about this project since I always liked space shooters and I couldn't wait to make one of my own! I really like how it looks since I poured a lot of hours into the assets and look of the game.



# What I learned
I learned a lot about the Godot Engine with this game. I used a whole lot more functions than in my last project and I even started using more signals and for the first time ever instantiating scenes, which helped me keep track of everything in the game. I also learned a lot about organizing my files so it isn't hard to find things in the assets menu. Another thing I learned in this one is using the projects settings in order to fix an issue I had with my last Godot game. It actually scales up when you go full screen now! It was a very exciting moment when I discovered how to do it.
