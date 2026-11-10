
# 💰 SpendWise

### Smart Personal Expense Tracker

SpendWise is a cross-platform mobile application built with **Flutter** that helps users track, manage, and analyze their daily income and expenses in one place.

The application allows users to record transactions manually or import transaction information from bank transaction screenshots, making personal financial management easier and more convenient.

## ✨ Features

### 📊 Dashboard
- View total balance, income, and expenses.
- Monitor daily, weekly, and monthly spending.
- Visualize spending habits with charts.
- View recent transactions.

### 💳 Transaction Management
- Add income and expenses manually.
- Import transactions from bank screenshots.
- Extract transaction details using OCR.
- Review and edit extracted information.
- Organize transactions by categories.
- Search and filter transaction history.

### 🏦 Wallet Management
- Manage multiple wallets and accounts.
- Track individual wallet balances.
- View wallet transaction history.

### 📈 Financial Analytics
- Analyze expenses by category.
- Compare spending across different periods.
- Identify spending patterns.
- Generate financial reports.

### 🎯 Budget Management
- Set monthly spending limits.
- Monitor budget usage.
- Track financial goals.

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| Flutter | Cross-platform mobile development |
| Dart | Programming language |
| Riverpod | State management |
| GoRouter | Navigation |
| SQLite / Drift | Local database |
| Google ML Kit | OCR and text recognition |
| Dio | HTTP client |
| fl_chart | Data visualization |
| Spring Boot | Backend API (planned) |
| PostgreSQL | Server database (planned) |

## 🏗️ Project Structure

```text
lib/
├── core/
│   ├── constants/
│   ├── errors/
│   ├── services/
│   ├── theme/
│   └── utils/
│
├── features/
│   ├── dashboard/
│   ├── transactions/
│   ├── wallets/
│   ├── categories/
│   ├── budgets/
│   ├── analytics/
│   └── settings/
│
├── shared/
│   ├── widgets/
│   └── providers/
│
└── main.dart
```

## 📸 Transaction Import Workflow

One of SpendWise's key features is simplifying transaction recording.

1. Select or capture a bank transaction screenshot.
2. Extract transaction information using OCR.
3. Identify details such as amount, date, and description.
4. Review and edit extracted information.
5. Select the appropriate category and wallet.
6. Save the transaction.

## 🚀 Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- Android Studio or VS Code
- Android Emulator or iOS Simulator

### Installation

**1. Clone the repository**

```bash
git clone https://github.com/YOUR_USERNAME/spendwise.git
```

**2. Navigate to the project**

```bash
cd spendwise
```

**3. Install dependencies**

```bash
flutter pub get
```

**4. Run the application**

```bash
flutter run
```

## 🗺️ Development Roadmap

- [ ] Initialize Flutter project.
- [ ] Design application UI and navigation.
- [ ] Implement dashboard.
- [ ] Implement manual income and expense management.
- [ ] Set up local database.
- [ ] Implement wallet management.
- [ ] Implement transaction categories.
- [ ] Implement screenshot transaction importing.
- [ ] Integrate OCR text recognition.
- [ ] Add transaction review and editing.
- [ ] Implement financial analytics.
- [ ] Implement budget management.
- [ ] Develop backend API with Spring Boot.
- [ ] Integrate PostgreSQL and authentication.
- [ ] Add automated testing.
- [ ] Prepare Android and iOS releases.

## 🎯 Project Goals

- Make daily expense tracking simple and convenient.
- Reduce manual transaction entry.
- Help users understand their spending habits.
- Provide better visibility into personal finances.
- Support multiple transaction importing methods.

## 📱 Platform Support

- Android
- iOS

## 👨‍💻 Developer

**Developed by:**  Mithona Heng

**Project:** SpendWise

**Built with:** Flutter & Dart

## 📄 License

This project is currently under development. License details will be added later.
```
