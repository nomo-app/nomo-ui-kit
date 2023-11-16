[![style: very good analysis](https://img.shields.io/badge/style-very_good_analysis-B22C89.svg)](https://pub.dev/packages/very_good_analysis)

# Nomo UI Kit Flutter

See the [api-docs](https://dev.nomo.app/nomo-ui-kit) for a list of individual functions.

Originally created for the Nomo App, this Flutter UI package offers a collection of reusable widgets,
such as buttons and cards.
By seamlessly integrating as a submodule, it
encourages modular design and ensures a cohesive user experience throughout.
Simplify UI development without locking yourself into a fixed system.

## Why Nomo UI Kit?

Compared to Kits like Material UI, Nomo UI Kit offers a few outstanding features:

- **Extremely lightweight**: Nomo UI Kit has almost zero runtime-dependencies and can fit easily into any web app or native app.
- **Highly customizable**: Although Nomo UI Kit has its opinion on how a UI should look, it allows to customize almost every detail.
- **Highly extensible**: By subclassing Nomo UI widgets, it is easy to adopt for a wide range of design languages.

## Features

- Versatile Buttons: Our UI package includes a variety of buttons designed to suit different use cases. From primary action buttons to subtle secondary options, these customizable buttons seamlessly adapt to your app's design language, ensuring a consistent and polished look across the board.

- Interactive Cards: Elevate your app's content presentation with interactive cards. These versatile components provide an organized and visually appealing way to showcase information. With options for media integration and customizable layouts, our cards offer a dynamic user experience.

- Text Elements with Style: Enhance your app's typography with our carefully crafted text elements. Whether it's headings, paragraphs, or labels, our UI package provides consistent text styling that complements your design principles. Maintain readability and visual harmony throughout your app's interface.

- Intuitive Dialogs: Seamlessly engage users with intuitive dialogs powered by our UI package. Whether it's capturing user input or conveying important information, our dialogs ensure a smooth and coherent interaction flow. Customize dialog content, appearance, and behavior to create a seamless extension of your app's functionality.

Each feature within our UI package is thoughtfully crafted; streamlining the creation of a cohesive and user-friendly app experience.

- More Widgets Coming Soon!

## How to integrate

Add this as a Git-submodule to a Flutter app by using Git-commands:

````
git submodule add https://github.com/nomo-app/nomo-ui-kit.git packages/nomo-ui-kit
````

Afterwards, expand your pubspec.yaml accordingly:

```
dependencies:
    nomo_ui_kit:
        path: packages/nomo-ui-kit
```
