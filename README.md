# Flickit

https://github.com/user-attachments/assets/7dc34f3a-c9e3-4aa5-92ee-bd24a8588585

# Football Drills App

This project is a Flutter-based mobile app that helps users to track their football drills, view leaderboard, and manage their login sessions. It uses MongoDB for data storage and AWS for handling cloud functions (Lambda and S3 for images).

## Features

- **User Authentication & Login:** Secure user login with session management.
- **Football Drill Data:** Displays a list of football drills, each with a name, total count, and image.
- **Drill Detail Page:** Allows users to enter their completed counts for a drill, up to the total count.
- **User Dashboard:** Displays a list of drills the user has participated in with their counts.
- **Leaderboard (Optional):** Displays a global leaderboard based on total drill counts.
- **Logout Functionality:** Logs the user out and clears session data.

## Technologies Used

- **Frontend:** Flutter (Dart)
- **Backend:** AWS Lambda (Node.js or Python) / Node.js/Express
- **Database:** MongoDB (MongoDB Atlas)
- **Cloud Storage:** AWS S3 for storing drill images
- **Session Management:** SharedPreferences or Secure Storage in Flutter

## Setup Instructions

Follow these steps to set up and run the project:

### Prerequisites

1. **Flutter SDK:**
   - Download and install Flutter from [Flutter's official website](https://flutter.dev/docs/get-started/install).
   - Ensure Flutter is properly configured by running `flutter doctor` in your terminal.

2. **MongoDB Atlas:**
   - Create an account on [MongoDB Atlas](https://www.mongodb.com/cloud/atlas).
   - Create a new cluster and configure it with your desired settings (e.g., free tier).
   - Obtain your MongoDB URI connection string.

3. **AWS Account:**
   - Set up an AWS account and configure AWS Lambda for the backend functions.
   - Set up an S3 bucket for image hosting.

### Installation

1. **Clone the repository:**

```bash
git clone https://github.com/yourusername/football-drills-app.git
cd football-drills-app

Install Flutter dependencies:

**flutter pub get**
Configure MongoDB and AWS Lambda:

Update the backend configuration files with your MongoDB URI and AWS Lambda function URLs.
Run the app:
For Android:

**flutter run**

  
AWS Lambda Functions
Lambda Function 1: Fetch football drill data from MongoDB.
Lambda Function 2: Save user counts for drills to MongoDB.

