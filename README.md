# Fake Store App

A Flutter application demonstrating UI components, state management with BLoC, API integration, and testing.
---

# 📌 Features

- Search Bar: Search products locally (no API call).

- Carousel Slider: Smooth sliding banners for featured items.

- Categories List: Horizontally scrollable list of product categories. Selecting a category fetches its products from the API.

- Products List: Fetches and displays products from API.

# State Management (BLoC):

- Fetch all products

- Fetch products by selected category

- Filter products locally based on search input

- API Integration: Retrofit + Dio with json_serializable for models.

# Testing:

- 3 Unit Tests (repository & BLoC logic)

- 1 Widget Test (search bar & UI behavior)

- 1 Integration Test (API data & UI)

# Responsive UI: Designed with ScreenUtil for different screen sizes.
---

## 🖼️ Screenshots

| shimmer loading | home | category products | search |
|-----------------|------|-------------------|--------|
|<img width="1080" height="2400" alt="Screenshot_1762022494" src="https://github.com/user-attachments/assets/037c9514-cf80-476c-b545-592f976d87fc" />|<img width="1080" height="2400" alt="Screenshot_1762022528" src="https://github.com/user-attachments/assets/06046c52-e5dd-4b11-9880-f2ce5dde948e" />|<img width="1080" height="2400" alt="Screenshot_1762022745" src="https://github.com/user-attachments/assets/ee012cf9-357d-4ffe-a71c-93d6870aab59" />|<img width="1080" height="2400" alt="Screenshot_1762022560" src="https://github.com/user-attachments/assets/51aa59fd-564c-4ff0-8fe2-a789190fa443" />|

---

# 🛠️ Project Structure
```
lib/
├─ core/                 # Core utilities, helpers, and theming
├─ features/
│  ├─ home/
│  │  ├─ data/           # API services, repository, models
│  │  ├─ domain/         # Entities , repository, use cases
│  │  └─ presentation/ # Screens, widgets, and BLoC
├─ fake_store_app.dart            
└─ main.dart  

```
---

# 🚀 Getting Started

- Clone the repository:
git clone https://github.com/Sarahelkholy/fake_store.git
 / cd fake_store

- Install dependencies:
flutter pub get


- Run the app:
flutter run

---
# 🧩 State Management (BLoC)

## HomeBloc handles:
- Fetching all categories
- Fetching all products
- Fetching products by selected category
- Filtering products locally based on search input
- Holds a TextEditingController for the search bar to preserve text between rebuilds.
- Emits loading, success, and error states for each operation.

---
# 🌐 API Integration

- Dio + Retrofit used for API calls.
- Data models generated using json_serializable.
- API calls handle errors with ApiResult and ErrorHandler.
- Fetching products by category is dynamic based on user selection.

---
# 🧪 Testing

## Unit Tests:
- Repository methods (getProducts, getProductsByCategory)
- HomeBloc logic for fetching data, filtering, and category selection

## Widget Test:
- SearchContainer renders correctly and triggers search events

## Integration Test:
- Categories and products are fetched and displayed correctly in the UI

---
# 📝 Notes

- Search is local: No API call is made for searching; it filters already fetched products.
- Search bar text is preserved across rebuilds because its controller is stored in HomeBloc.
- All UI components are responsive for different screen sizes.

