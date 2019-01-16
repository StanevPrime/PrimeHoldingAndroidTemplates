##  Description
Firebase Configuration will add all needed dependencies for both Crashlytics and Analytics. Also, if Analytics is selected, a Firebase Module will be created providing an instance of Firebase as DI.
## Usage
If you have already created a project and set up your application in the Firebase Console, go to Template usage.

#### Setting up Firebase Console
1. Go to [Firebase Console](https://console.firebase.google.com/u/0/)

1. Add a new project or use an existing one.
![Alt text](../Images/Set_Up_Firebase_Step_1.PNG?raw=true "Add new Project")
1. Fill in your project information and check the applicable checkboxes.
![Alt text](../Images/Set_Up_Firebase_Step_2.PNG?raw=true "Set up Firebase Project")

1. Add your Android application
![Alt text](../Images/Set_Up_Firebase_Step_3.PNG?raw=true "Add Android application")
1. Download the supplied google-services.json file and add it in the main folder of the project.
![Alt text](../Images/Set_Up_Firebase_Step_4.PNG?raw=true "Download JSON")
![Alt text](../Images/Set_Up_Firebase_Step_5.PNG?raw=true "Add JSON to application")
1. Proceed with Template usage

#### Template usage
1. Go to New -> Prime -> Firebase Configuration

    ![Alt text](../Images/Firebase_Configuration_Step_1.png?raw=true "Step 1")
1. You have an option to select Analytics, Crashlytics or both

    ![Alt text](../Images/Firebase_Configuration_Step_2.png?raw=true "Step 2")
1. Click Finish.
All classes and resources are added to the project.
1. Build your project.
