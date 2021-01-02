[![support](https://img.shields.io/badge/plateform-flutter%7Candroid%20studio-9cf?style=plastic&logo=appveyor)](https://github.com/tsvillain/TMDB-movie-app)
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/tsvillain/TMDB-movie-app/issues)

# Introduction

> “TMDB movie app”

Before we start, you can take a look at the app:

[YouTube](youtu.be/elmpyxvxso4)

## :bulb: Key Features (or What will you learn, if you are here to learn)

- [x] List Trending Movies
- [x] Check Movie Details
- [x] API Integration
- [x] Open Movie Trailer on YouTube
- [x] Search Movies
- [x] GetX State Management
- [ ] Show Details of Search Movie Result
- [ ] Refine Code
- [ ] Use local DB to store Favourite movie

## 🚀 &nbsp;Installation

To clone and run this application, you'll need [Git](https://git-scm.com) and [Flutter](https://flutter.dev/docs/get-started/install) installed on your computer. From your command line:

```bash
# Clone this repository
$ git clone https://github.com/gadgetvala/TMDB-movie-app.git

# Go into the repository
$ cd TMDB-movie-app

# Install dependencies
$ flutter pub get

# Run the app
$ flutter run

# You can also run this app on Web (Not Optimized and Flutter Beta or Above Channel Required)
$ flutter run -d chrome
```

### Packages

Below are the information about packages used in this project.

| Package                                                     |
| ----------------------------------------------------------- |
| [carousel_slider](https://pub.dev/packages/carousel_slider) |
| [flutter_svg](https://pub.dev/packages/flutter_svg)         |
| [get](https://pub.dev/packages/get)                         |
| [getwidget](https://pub.dev/packages/getwidget)             |
| [http](https://pub.dev/packages/http)                       |
| [intl](https://pub.dev/packages/intl)                       |
| [url_launcher](https://pub.dev/packages/url_launcher)       |

### API Used

`https://www.themoviedb.org/documentation/api`

### Directory Structure

The project directory structure is as follows:

```
├── android
├── asset
├── build
├── ios
├── lib
    ├── controller
    ├── model
    ├── services
    ├── view
    ├── constants.dart
    ├── main.dart
├── pubspec.lock
├── pubspec.yaml

```

What's in **controller**
-> GetX controller

What's in **model**
-> Data Model for JSON data for easy access.

What's in **services**
-> http Network call to TMDB Database using TMDB API

What's in **view**
-> Contains the UI Widget for respected Page View.

## :clap: Done

Feel free to **file a new issue** with a respective title and description on the [TMDB Movie App](https://github.com/tsvillain/TMDB-movie-app/issues) repository. If you already found a solution to your problem, **I would love to review your pull request**!

## 📘&nbsp; License

The TMDB app is released under the under terms of the [MIT License](LICENSE).

## :heart: Contributor

Made by [Tekeshwar Singh](https://github.com/tsvillain)
