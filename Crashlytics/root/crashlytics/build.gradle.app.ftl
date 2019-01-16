buildscript {
    repositories {
        maven {
            url 'https://maven.fabric.io/public'
        }
    }
    dependencies {
        classpath 'com.google.gms:google-services:4.2.0'
        classpath 'io.fabric.tools:gradle:1.27.0'
    }
}

allprojects {
    repositories {
        maven {
            url 'https://maven.google.com/'
        }
    }
}
