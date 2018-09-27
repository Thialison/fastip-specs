# FasTip-specs
Basic structure android Appium project

### Installing Ruby and Rbenv

```ruby
a. Install Homebrew:
   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"r
   
b. Install JDK:
   http://www.oracle.com/technetwork/java/javase/downloads/index.html

c. Install rbenv:
   brew install rbenv
   echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
   rbenv install -l
   rbenv install 2.4.0
   rbenv local 2.4.0

d. Installing Android Studio
   https://developer.android.com/studio/index.html?hl=pt-br
   
e. Installing Appium Desktop
   http://appium.io/ => Click in download
```

### Java Environment Variables
```ruby
In your terminal run:
open ~/.bash_profile

Fill the file with:
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PATH 
```

### Android Environment Variables

```ruby
In your terminal run:
open ~/.bash_profile

Fill the file with:
export ANDROID_HOME=/Users/<user>/Library/Android/sdk
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/platform-tools/adb:$PATH
export PATH=$ANDROID_HOME/emulator/:$PATH

NOTE: Change the <user> by the name of your user
```

### Installing the Ruby gem manager

```ruby
gem install bundler
```

### Running the project :dart:

```ruby
1. Clone the project in your Desktop folder, 
if you want to clone in another folder you need to change the value app in the file caps/fastip.txt:
   git clone https://github.com/Thialison/fastip-specs.git

2. Access the project folder on Terminal and run:
   bundle

3. Open your emulator or connect your real device.
   
4. Start Appium

5. Run all scenarios with: 
   cucumber

6. Run all scenarios with html report: 
   cucumber -p report
```
