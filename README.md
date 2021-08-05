# Triad
A Swift Application about productivity. The application isn't finished, but you can add and delete your todo list. 

## Build and Runtime Requirements
+ Xcode 12.0 or later
+ iOS 13.0 or later

## Configuring the Project
Configuring the Xcode project requires a few steps in Xcode to get up and running with iCloud capabilities. 

1) Configure each Mac and iOS device you plan to test with an iCloud account. Create or use an existing Apple ID account that supports iCloud.

2) Configure the Team for each target within the project.

Open the project in the Project navigator within Xcode and select each of the targets. Set the Team on the General tab to the team associated with your developer account.

3) Create an Scheme with iOS device (iPhone 11 or later)

With your project open, go to Scheme > New Scheme. Select the target Triad and set up the iPhone 11 for running and building the application. 

## About Triad

Lister is a Cocoa productivity sample code project for iOS and OS X. In this sample, the user can create lists, add items to lists, and track the progress of items in the lists.

## Written in Swift

This application is written in Swift. The application use the concepts of Core Data, for saving and deleting the todo in the list. The suggestions space is reserved for API that gives suggestions to do in your routine.
The timer can help you to maintain your rest, while studying or working. 


## Application Architecture

Triad includes MVP design pattern. The Core Data Stack implements what is in App Delegate for context saving.
