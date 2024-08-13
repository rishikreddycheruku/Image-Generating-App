# AI Image Generator App

This is a simple Flutter-based application that allows users to generate images using AI based on text input. The app sends a request to an AI server, processes the input, and displays the generated image on the screen.

## Features

- **Text Input**: Enter a description or text, and the app will generate an image based on that input.
- **Image Display**: The app will display the generated image directly on the screen.
- **Loading Indicator**: While the image is being generated, a loading indicator will be shown.
- **Error Handling**: If the app encounters an issue (e.g., no internet connection), it will display an appropriate error message.

## Installation

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Android device or emulator for testing (optional, if you want to build the APK locally)

### Steps

1. **Clone the repository**:

   ```bash
   git clone https://github.com/your-username/your-repository.git
   cd your-repository
   ```

2. **Install dependencies**:

   ```bash
   flutter pub get
   ```

3. **Run the app**:

   You can run the app on an Android emulator or a connected device using:

   ```bash
   flutter run
   ```

### APK Installation

If you prefer to install the app directly on your Android device, download the APK file from the [Releases](https://github.com/rishikreddycheruku/Image-Generating-App/releases) section and install it on your device.

## Usage

1. Launch the app on your device.
2. Enter a descriptive text in the input field.
3. Press the "Create Image" button.
4. Wait for the AI to generate and display the image based on your input.

## Known Issues

- The app may take time to generate images based on the complexity of the input and server response time.
- In case of no internet connection, an error message will be displayed.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue if you encounter any problems.
