# Test Technique Instagram


## description 

This is a 4-hour technical test. The goal is to implement the features and stories of Instagram in SwiftUI.

The guidelines are as follows. 

- **Story List Screen**
    - Display a list of stories (pagination required: infinite number of stories, even if the data repeats). The rest of the screen doesn’t matter, it can be blank.
    - Each story should be visually identifiable as **seen or unseen**.
- **Story View Screen**
    - Users can navigate between the story list and individual stories.
    - Stories should have a **like/unlike** functionality.
    - Get inspired by Instagram (gestures, buttons, etc.).
- **States**
    - The user can like a story. **Seen/unseen states** should be explicit.
- **Persistence**
    - The states should **persist across app sessions**.


As for me, I started with an MVVM architecture.

The model is a StoryBundle containing information about a user and their stories.


I didn't have time to finish implementing the transition from one StoryBundle to another.

## Features

✅ View stories
✅ Tap to explore
✅ Click the button to like a story
⚠️ Data persistence not verified

##Results 

The project compiles, and I was able to visualize the required features.

Unfortunately, when integrating data persistence, I chose to use SwiftData but was constrained by time. I encountered a bug that prevented me from displaying the data and confirming that it was working correctly.
