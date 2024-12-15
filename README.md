# AI Image Generator App

This is a Flutter-based application that generates images using AI based on text input. The repository contains the `main.dart` file from the `lib` folder for developers to review or modify the main logic of the app. A ready-to-install APK is available in the `Releases` section for end-users who want to use the app without setting up a Flutter development environment.

## Features

- **Text Input**: Enter a description or text, and the app will generate an image based on that input.
- **Image Display**: Displays the generated image directly on the screen.
- **Loading Indicator**: Shows a loading indicator while the image is being generated.
- **Error Handling**: Displays error messages for issues like no internet connection.

---

## Installation

### APK Installation (For End-Users)

1. Go to the [Releases](https://github.com/rishikreddycheruku/Image-Generating-App/tree/main/releases) section of this repository.
2. Download the latest APK file.
3. Install the APK on your Android device.
4. Launch the app and start generating images!

---

### For Developers (Using `main.dart` File)

If you want to explore or modify the code, follow these steps:

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/rishikreddycheruku/Image-Generating-App.git
   cd Image-Generating-App
   ```

2. **Create a New Flutter Project**:

   Since this repository only contains the `main.dart` file, you’ll need to set up a new Flutter project:

   ```bash
   flutter create ai_image_generator
   cd ai_image_generator
   ```

3. **Replace the `main.dart` File**:

   Navigate to the `lib` folder in your newly created project and replace the `main.dart` file with the one provided in lib folder of this repository.

4. **Install Dependencies**:

   Run the following command in your project directory to install the necessary dependencies:

   ```bash
   flutter pub get
   ```

5. **Run the App**:

   Open the project in an IDE like [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio). Connect a device or emulator and run:

   ```bash
   flutter run
   ```

---

## How to Use

1. **Install the App**: Either install the APK from the `Releases` section or build and run the app using the provided `main.dart` file.
2. **Launch the App**: Open the AI Image Generator app on your Android device.
3. **Enter Text**: Type a description or text in the input field to generate an image.
4. **Generate Image**: Tap the "Create Image" button.
5. **View Image**: After processing, the app will display the generated image. Enter new text to generate more images.

---

## Known Issues

- **Image Generation Speed**: The time taken to generate images depends on server response.
- **Internet Connection**: The app requires an active internet connection to function.
