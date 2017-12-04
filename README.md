# iOS-Essential [Podfile Install]

####Add a Google SDK to your iOS app

CocoaPods is used to install and manage dependencies in existing Xcode projects.

    Create an Xcode project, and save it to your local machine.
    Create a file named Podfile in your project directory. This file defines your project's dependencies, and is commonly referred to as a Podspec.

    Open Podfile, and add your dependencies. A simple Podspec is shown here:
    
```javascript
    platform :ios, '8.1'
    target "YourProjectNameHere" do
      pod 'Firebase'
    end 
```

    Save the file.

    Open a terminal and cd to the directory containing the Podfile.
    
```javascript
    $ cd <path-to-project>/project/
```

    Run the pod install command. This will install the SDKs specified in the Podspec, along with any dependencies they may have.
    
```javascript
    $ pod update
```

    Open your app's `.xcworkspace` file to launch Xcode. Use this file for all development on your app.
