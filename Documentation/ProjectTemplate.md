# Description
This project configuration allows you to add many needed files and folder structure to your new application.
# Configure an application with Primer Config
1. Create a blank Android project as you usually would.
1. Copy the contents of [gradle.properties.txt](https://github.com/StanevPrime/PrimeHoldingAndroidTemplates/blob/master/Configuration/gradle.properties.txt) to your project's gradle properties. The added lines instruct the project to use the new AndroidX libraries and make external libraries use them as well if possible.
1. Sync the project.
1. Go to your project's root folder and right-click.
1. Go to New -> Prime -> Prime Config and select it.

    ![Alt text](https://github.com/StanevPrime/PrimeHoldingAndroidTemplates/blob/master/Images/Project_Step_1.png "Step 1")

1. Select the configuration that would best suit your needs.
    ![Alt text](https://github.com/StanevPrime/PrimeHoldingAndroidTemplates/blob/master/Images/Project_Step_2.png "Step 2")

  * Add Retrofit Configuration -- this would add the Retrofit dependencies to your gradle, create a base RestApi class plus a NetworkModule for Dagger.
  * Add Base Activity -- This would create a BaseActivity which will handle the management of disposables and some base methods.
  * Add Loading View Model -- This would create a Loading View Model which is used to handle the loading state of the application
  * Add Glide -- This would add [Glide](https://github.com/bumptech/glide) library to your dependencies
  * Add Picasso -- This would add [Picasso](http://square.github.io/picasso/) library to your dependencies

1. After you have selected your preferences, press Finish and wait for your project to sync.
1. Go to your build.gradle and replace library versions with the suggested ones by the IDE.
1. Done! Your project structure should look like this:
    ![Alt text](https://github.com/StanevPrime/PrimeHoldingAndroidTemplates/blob/master/Images/Project_Step_3.png "Step 3")
