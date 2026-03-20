# EDC

A static Flutter application built as a mid-term project.

## Overview

EDC is a Flutter-based mobile application that showcases a clean, modern UI design with various reusable widgets and components.

## Features

- Clean and intuitive user interface
- Reusable widget components
- Customer information display
- Account balance and billing information
- Action cards and app bar components

## Getting Started

### Prerequisites

- Flutter SDK (latest version)
- Dart SDK
- An IDE (VS Code, Android Studio, or IntelliJ)

### Installation

1. Clone the repository:
```bash
git clone https://github.com/j4nthirty1ne/flutter_EDC.git
cd flutter_EDC
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app on your desired platform:

### Running on Different Platforms

#### Web Browser
```bash
# Run on Chrome
flutter run -d chrome

# Run on Microsoft Edge
flutter run -d edge
```

#### Android Mobile Emulator
```bash
# First, launch the emulator
flutter emulators --launch Medium_Phone_API_36.1

# Then run the app on emulator
flutter run -d emulator-5554
```

#### Windows Desktop
```bash
flutter run -d windows
```

#### List All Available Devices
```bash
flutter devices

# With extended timeout
flutter devices --device-timeout 30
```

#### List and Manage Emulators
```bash
# List available emulators
flutter emulators

# Launch an emulator by ID
flutter emulators --launch <emulator_id>
```

#### Run with Additional Options
```bash
# Verbose output (for debugging)
flutter run -d emulator-5554 -v

# With extended device timeout
flutter run -d emulator-5554 --device-timeout 30
```


## Project Structure

```
lib/
├── main.dart                    # App entry point
├── constants/
│   ├── app_colors.dart         # Color constants
│   └── app_spacing.dart        # Spacing constants
└── widgets/
    ├── home_screen_widget.dart
    ├── app_bar_widget.dart
    ├── balance_card_widget.dart
    ├── bills_widget.dart
    ├── customer_info_widget.dart
    ├── action_cards_widget.dart
    └── reusable_widgets.dart
```

## Development

This project was developed as a mid-term assignment demonstrating Flutter UI design and widget composition practices.

## License

This project is for educational purposes.