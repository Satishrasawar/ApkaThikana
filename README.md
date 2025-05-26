# ApkaThikana
ApkaThikana Nagpur 🏠
"Ghar Dhoondo, Khushi Paao"
🎯 Overview
ApkaThikana Nagpur is a comprehensive real estate rental platform built with Flutter, designed to connect property seekers with property owners and agents in Nagpur. The app provides a seamless experience for discovering, viewing, and connecting for rental properties.
🚀 Live Demo

Web Version: [Coming Soon]
Windows Desktop: Available for testing

✨ Features
✅ Implemented

🔐 Firebase Authentication - Secure user login and registration
🎨 Multi-platform Support - Runs on Web (Chrome) and Windows Desktop
🏗️ Solid Architecture - Clean project structure with separation of concerns
🔄 Auth State Management - Automatic routing based on authentication status

🚧 In Development

🏠 Property Listings - Browse available rental properties
📱 User Dashboard - Personalized user experience
💾 Cloud Firestore Integration - Real-time data synchronization
📸 Image Upload - Property photos via Firebase Storage
🔍 Advanced Search - Filter properties by location, price, type
❤️ Favorites - Save and bookmark properties
📞 Contact System - Connect tenants with property owners

🛠️ Tech Stack
CategoryTechnologyFrontendFlutter, DartBackendFirebase (Auth, Firestore, Storage)PlatformsWeb, Windows Desktop, Android (planned)State ManagementStateful Widgets (upgrading to Provider/Bloc)IDEAndroid Studio
📁 Project Structure
lib/
├── main.dart                    # App entry point with Firebase initialization
├── screens/
│   ├── auth_gate.dart          # Authentication routing logic
│   ├── login_screen.dart       # User login interface
│   ├── register_screen.dart    # User registration interface
│   └── user_home.dart          # Home dashboard (in development)
├── services/
│   └── firebase_auth_service.dart  # Authentication service layer
├── widgets/
│   └── common/                 # Reusable UI components
├── models/
│   └── property.dart           # Property data models
├── utils/
│   └── constants.dart          # App constants and configurations
└── assets/
    ├── images/                 # App images and icons
    └── fonts/                  # Custom fonts
🚀 Getting Started
Prerequisites

Flutter SDK (3.0 or higher)
Android Studio or VS Code
Firebase project setup
Chrome browser (for web testing)

Installation

Clone the repository
bashgit clone https://github.com/YOUR_USERNAME/apkathikana-nagpur.git
cd apkathikana-nagpur

Install dependencies
bashflutter pub get

Firebase Setup

Create a new Firebase project
Add your google-services.json (Android) and GoogleService-Info.plist (iOS)
Update firebase_options.dart with your configuration


Run the application
bash# For web
flutter run -d chrome

# For Windows desktop
flutter run -d windows

# For Android (when ready)
flutter run


🏗️ Architecture & Design Patterns
Current Implementation

Layered Architecture: Clear separation between UI, business logic, and data
Firebase Integration: Leveraging Firebase services for scalable backend
Responsive Design: Multi-platform UI that adapts to different screen sizes

Planned Improvements

State Management: Migration to Provider or Bloc pattern
Repository Pattern: Abstract data access layer
Clean Architecture: Enhanced separation of concerns
Unit Testing: Comprehensive test coverage

📱 Screenshots
Login ScreenRegistrationHome DashboardShow ImageShow ImageShow Image
🎯 Target Users
Primary Audience

Rental Seekers: Individuals and families looking for rental properties in Nagpur
Property Owners: Landlords wanting to list their properties
Real Estate Agents: Professionals managing multiple property listings

Use Cases

Search and filter rental properties
View detailed property information and photos
Contact property owners or agents directly
Save favorite properties for later review
List and manage rental properties

🚧 Development Roadmap
Phase 1: Core Functionality ✅

 Project setup and architecture
 Firebase authentication
 Multi-platform support
 Basic navigation structure

Phase 2: Property Management 🚧

 Firestore database integration
 Property listing screens
 Image upload functionality
 User dashboard implementation

Phase 3: Advanced Features 📋

 Search and filtering system
 Favorites and bookmarking
 Contact and messaging system
 Property management for owners
 Push notifications

Phase 4: Enhancement & Scale 🔮

 Advanced search with maps
 Payment integration
 Analytics and reporting
 Admin panel
 API for third-party integrations

🤝 Contributing
Contributions are welcome! Please follow these steps:

Fork the repository
Create a feature branch (git checkout -b feature/AmazingFeature)
Commit your changes (git commit -m 'Add some AmazingFeature')
Push to the branch (git push origin feature/AmazingFeature)
Open a Pull Request

Coding Standards

Follow Dart/Flutter style guidelines
Add comments for complex logic
Ensure responsive design principles
Test on multiple platforms before submitting

🐛 Known Issues

Home screen needs content implementation
Property listing integration pending
Image upload functionality not yet implemented

📊 Business Impact
Problem Solving

Market Gap: Simplified property discovery in Nagpur
User Experience: Streamlined rental process for both tenants and landlords
Digital Transformation: Moving traditional property search online

Success Metrics (Planned)

User registration and retention rates
Property listing engagement
Successful connections between tenants and landlords
Time reduction in property discovery process

📞 Contact & Support
Developer: Satish Rasawar

💼 LinkedIn: satish-rasawar-0a8262259
📧 Email: [satishrasawar@gmail.coml]
🏢 Company: Praharsh Business Outsourcing

Project Status: Active Development
Last Updated: May 2025
📄 License
This project is licensed under the MIT License - see the LICENSE file for details.
🙏 Acknowledgments

Flutter team for the excellent framework
Firebase for reliable backend services
Nagpur real estate community for inspiration
Open source contributors and the Flutter community


Built with ❤️ in India by Satish Rasawar
