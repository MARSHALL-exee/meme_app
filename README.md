# Meme App 😂

A dynamic and colorful Flutter meme browser that pulls trending memes from Reddit via the [meme-api.com](https://meme-api.com), displays them in beautifully themed cards, and gives you the internet's freshest laughs at the tap of a button.

---

## Features ✨

* **Fetch Fresh Memes**: Instantly load 50 memes from the meme API
* **Dynamic Color Extraction**: Each meme card’s background adapts to the dominant color of the meme image
* **Image Caching**: Uses caching for faster and smoother image loading
* **Custom Meme Cards**: Displays meme title, upvotes, image, and a link to the original Reddit post
* **Floating Refresh Button**: Reload the memes list anytime with a single tap
* **Responsive UI**: Optimized for a clean and colorful meme viewing experience

---

## Screenshots 📱

*Add screenshots or GIFs here showing memes loading, the color cards, and the refresh flow.

---

## Technologies Used 🛠️

* **Flutter**: Cross-platform mobile framework
* **Dart**: Programming language
* **HTTP**: API communication
* **Cached Network Image**: Image caching and loading placeholders
* **Palette Generator**: Dynamic color extraction from images
* **Material Design**: Clean, adaptive UI

---

## Dependencies 🛆

```yaml
dependencies:
  flutter:
    sdk: flutter
  http: ^0.13.5        # For API calls
  cached_network_image: ^3.2.3  # To cache meme images
  palette_generator: ^0.3.3      # To extract colors from images
```

---

## Getting Started 🚀

### Prerequisites

* Flutter SDK (>=2.0.0)
* Android Studio / VS Code
* Android/iOS emulator or real device

### Installation

1. Clone the repository:

```bash
git clone https://github.com/MARSHALL-exee/meme_app
```

2. Navigate to the project directory:

```bash
cd meme_app
```

3. Install dependencies:

```bash
flutter pub get
```

4. Run the app:

```bash
flutter run
```

---

## Project Structure 📁

```
lib/
├── main.dart               # Entry point of the app
├── models/
│   └── meme_model.dart     # Meme data model (from JSON)
├── services/
│   └── meme_service.dart   # Handles API requests
├── widgets/
│   └── meme_card.dart      # Custom widget to display each meme
└── screens/
    └── home_page.dart      # Main screen displaying memes
```

---

## API Reference 🌐

The app uses the [Meme API](https://meme-api.com):

```http
GET https://meme-api.com/gimme/50
```

Response includes:

* `title`, `url`, `ups`, `preview`, `subreddit`, `postLink`, `author`, `nsfw`, `spoiler`

---

## How It Works 🧬

1. On launch, `HomePage` fetches 50 memes via `MemeService`.
2. The response is parsed into a list of `Meme` objects.
3. Each meme is passed to a `MemeCard` widget that:

   * Caches and displays the image
   * Uses `PaletteGenerator` to extract the dominant color
   * Applies the color to the background gradient of the card
4. A FAB (floating action button) allows users to refresh the meme list anytime.

---

## Future Enhancements 🔮

* [ ] Share memes to social apps
* [ ] Filter by subreddit or category
* [ ] Favorite/bookmark memes
* [ ] Meme download/save option
* [ ] Dark mode theme
* [ ] Infinite scroll / pagination

---

## License 📄

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## Author 👨‍💻

Your Name – [@Padmaraj Harigal](https://github.com/MARSHALL-exee)

---

## Acknowledgments 🙏

* [Meme API](https://meme-api.com) for the awesome free API
* Flutter & Dart teams for making beautiful apps possible
* `palette_generator` and `cached_network_image` package maintainers

---

⭐️ Star this repo if it made you laugh or helped you learn Flutter!
