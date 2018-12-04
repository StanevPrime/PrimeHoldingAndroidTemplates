##  Description
Rx Activity represents a set of an Activity, View Model with Input, Output and Input-Output interfaces, and a layout for the Activity.
## Usage
1. Go to New -> Prime -> RxActivity

    ![Alt text](Images/Activity_Step_1.png?raw=true "Step 1")
1. You have an option to inherit from BaseActivity assuming you have used the Prime Config template beforehand. This will delegate all responsibilities for handling disposables to the BaseActivity. You can also use it as a standalone activity that has its own management mechanism.

    ![Alt text](Images/Activity_Step_2.png?raw=true "Step 2")
1. Select your new Activity name skipping the **Activity** word from the title and click Finish.
All classes and resources are added to the project.
1. In order to make it work, you need to **manually** set them up with Dagger -- add your View Model to the View Model module and your Activity to the App Component as described in the files. Also, substitute the ViewModel parameter to the one you need or remove it.     

## Generated files
* Activity, either standalone or inheriting from BaseActivity. It is already connected to the ViewModel.
![Alt text](Images/Activity_Result_Activity.png?raw=true "Generated Activity")

* View Model that is set up with the needed interfaces.
![Alt text](Images/Activity_Result_ViewModel.png?raw=true "Generated View Model")

* Layout file that contains a Constraint Layout wrapped in <layout> tags to be used via Data Binding
![Alt text](Images/Activity_Result_Layout.png?raw=true "Generated View Model")
