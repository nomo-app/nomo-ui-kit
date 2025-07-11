# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with the Nomo UI Kit repository.

## Project Overview

**Nomo UI Kit** is a highly opinionated and customizable Flutter UI Kit designed as an alternative to Material UI. Originally created for the Nomo App, it offers:

- **Lightweight**: Zero runtime dependencies
- **Highly customizable**: Allows customization of almost every UI detail
- **Extensible**: Easy to subclass widgets for various design languages
- **Code generation**: Uses custom generators for theme data and component configurations

## Repository Structure

This is a monorepo with two packages:
- `/packages/nomo-ui-kit/` - Main UI kit package
- `/packages/nomo-ui-kit-generator/` - Build runner generators for development

## Common Development Commands

### Running the Example App
```bash
# Navigate to example directory
cd example

# Install dependencies
flutter pub get

# Run build_runner for route generation
flutter pub run build_runner build

# Run the example app
flutter run -d chrome     # Web
flutter run -d macos      # macOS
flutter run -d ios        # iOS
flutter run -d android    # Android
```

### Code Generation
```bash
# Generate theme data files (run from nomo-ui-kit root)
flutter pub run build_runner build --delete-conflicting-outputs

# Watch mode for continuous generation
flutter pub run build_runner watch --delete-conflicting-outputs
```

### Testing and Code Quality
```bash
# Run tests
flutter test

# Analyze code (uses very_good_analysis)
flutter analyze

# Format code
dart format .
```

### Publishing (Internal Use)
```bash
# Dry run to check package
flutter pub publish --dry-run

# Note: publish_to is set to 'none' in pubspec.yaml
```

## Architecture

### Component Structure
Each UI component typically includes:
- Main widget file (e.g., `nomo_button.dart`)
- Generated theme data file (e.g., `nomo_button.theme_data.g.dart`)
- Theme data is generated from annotations using the custom generator

### Theme System
- **NomoTheme**: Central theme provider
- **Color Theme**: Customizable color schemes
- **Sizing Theme**: Consistent spacing and sizing
- **Typography Theme**: Text styling system

### Code Generation

The project uses three custom builders:

1. **theme_data_builder**: Generates theme data classes from annotations
   - Input: `*.dart` files with theme annotations
   - Output: `*.theme_data.g.dart` files

2. **theme_utils_builder**: Generates theme utility functions
   - Output: `*.theme_utils.g.part` files

3. **reflection_builder**: Generates reflection data (e.g., icon mappings)
   - Output: `*.reflection.g.part` files

### Component Categories

1. **App Components** (`/lib/components/app/`)
   - NomoApp, NomoScaffold, NomoAppBar, NomoBottomBar, NomoSider

2. **Buttons** (`/lib/components/buttons/`)
   - PrimaryNomoButton, SecondaryNomoButton, NomoTextButton, NomoLinkButton

3. **Input Components** (`/lib/components/input/`)
   - NomoInput, NomoForm

4. **Display Components**
   - NomoCard, NomoDialog, NomoNotification, NomoSnackbar

5. **Layout Components**
   - DynamicRow, NomoElevation, NomoOutlineContainer

6. **Icons** (`/lib/icons/`)
   - Custom icon set with FontAwesome integration
   - Generated icon mappings in `nomo_icons.g.dart`

## Development Workflow

### Adding a New Component

1. Create component file in appropriate directory
2. Add theme annotations for customizable properties
3. Run code generation: `flutter pub run build_runner build`
4. Add example usage in `/example/lib/sections/`
5. Update example app routes if needed

### Modifying Existing Components

1. Make changes to the component
2. If theme properties changed, regenerate: `flutter pub run build_runner build`
3. Test in example app
4. Update relevant example sections

### Working with the Generator

The generator package (`nomo-ui-kit-generator`) should only be modified when:
- Adding new generation capabilities
- Fixing generation bugs
- Improving generated code output

## Example App

The example app (`/example/`) serves as:
- Living documentation of all components
- Testing ground for new features
- Reference implementation for users

Key files:
- `main.dart` - App entry point with theme setup
- `routes.dart` - Navigation structure (uses route_gen)
- `/sections/` - Individual component showcases
- `theme.dart` - Example theme configurations

## Best Practices

1. **Theme Consistency**: Always use theme properties instead of hardcoded values
2. **Code Generation**: Run generators after modifying annotated code
3. **Example Coverage**: Add examples for all new components/features
4. **Platform Testing**: Test on web, iOS, Android, and macOS
5. **Documentation**: Update component examples when making changes

## Common Issues

### Build Runner Conflicts
```bash
# If you get conflicts, use:
flutter pub run build_runner build --delete-conflicting-outputs
```

### Generated Files Out of Sync
- Ensure you run build_runner after changes
- Check that annotations are correctly formatted
- Verify generator package is properly linked

### Example App Route Issues
- Routes are generated using route_gen
- Run build_runner in the example directory
- Check routes.dart for proper annotations

## Component Examples

### Buttons
```dart
// Primary button with icon
PrimaryNomoButton(
  text: "Save",
  icon: Icons.save,
  iconSize: 20,
  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  onPressed: () => handleSave(),
)

// Secondary button with loading state
SecondaryNomoButton(
  text: "Process",
  actionType: isLoading ? ActionType.loading : ActionType.def,
  onPressed: isLoading ? null : () => processData(),
)

// Text button
NomoTextButton(
  text: "Cancel",
  foregroundColor: context.colors.onSurface,
  onPressed: () => Navigator.pop(context),
)

// Link button
NomoLinkButton(
  text: "Learn more",
  onPressed: () => openUrl(),
)
```

### Cards
```dart
NomoCard(
  backgroundColor: context.colors.surface,
  borderRadius: BorderRadius.circular(12),
  elevation: 2,
  child: Padding(
    padding: const EdgeInsets.all(16),
    child: content,
  ),
)
```

### Dialogs
```dart
NomoDialog(
  title: "Confirm Action",
  content: Text("Are you sure you want to proceed?"),
  actions: [
    NomoTextButton(
      text: "Cancel",
      onPressed: () => Navigator.pop(context),
    ),
    PrimaryNomoButton(
      text: "Confirm",
      onPressed: () => confirmAction(),
    ),
  ],
)
```

### Input & Forms
```dart
// Simple input
NomoInput(
  title: "Email",
  placeholder: "Enter your email",
  leading: Icon(Icons.email),
  validator: (value) => validateEmail(value),
)

// Form with validation
NomoForm(
  formKey: formKey,
  submitButtonBuilder: (context, onPressed) => PrimaryNomoButton(
    text: "Submit",
    onPressed: onPressed,
  ),
  onSubmitted: (values) => handleSubmit(values),
  children: [
    NomoInput(
      formKey: "username",
      title: "Username",
      validator: NomoFormValidator.required,
    ),
    NomoInput(
      formKey: "password",
      title: "Password",
      obscureText: true,
      validator: NomoFormValidator.minLength(8),
    ),
  ],
)
```

### Typography
```dart
// Headings
NomoText(
  "Main Title",
  style: context.typography.h1,
)

// Body text
NomoText(
  "Description text",
  style: context.typography.b1,
  maxLines: 2,
)

// Auto-fitting text
NomoText(
  "Responsive heading",
  style: context.typography.h2,
  fit: true,
)
```

### Loading States
```dart
// Circular loading
Loading(
  color: context.colors.primary,
  strokeWidth: 3,
)

// Shimmer effect
Shimmer(
  child: Container(
    height: 100,
    width: double.infinity,
    color: context.colors.surface,
  ),
)
```

### Theme Overrides
```dart
// Override button theme locally
PrimaryNomoButtonThemeOverride(
  data: PrimaryNomoButtonThemeDataNullable(
    backgroundColor: context.colors.secondary,
    borderRadius: BorderRadius.circular(20),
  ),
  child: PrimaryNomoButton(
    text: "Custom Style",
    onPressed: () {},
  ),
)
```

### Layout Helpers
```dart
// Responsive row
DynamicRow(
  breakWidth: 600,
  wrapAlignment: WrapAlignment.center,
  children: [
    widget1,
    widget2,
    widget3,
  ],
)

// Spacing extensions
Column(
  children: [
    header,
    const SizedBox(height: 16).vSpacing,
    content,
    const SizedBox(height: 24).vSpacing,
    footer,
  ],
)

// List spacing
Column(
  children: items.spacingV(12),
)
```

## Best Practices

### 1. Theme Usage
Always use theme values instead of hardcoded colors and sizes:
```dart
// Good
Container(
  color: context.colors.background1,
  padding: EdgeInsets.all(context.sizes.medium),
)

// Avoid
Container(
  color: Colors.grey[100],
  padding: EdgeInsets.all(16),
)
```

### 2. Component Composition
Build complex UIs by composing smaller components:
```dart
NomoCard(
  child: Column(
    children: [
      NomoText("Title", style: context.typography.h3),
      16.vSpacing,
      NomoText("Content", style: context.typography.b1),
      24.vSpacing,
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          NomoTextButton(text: "Cancel", onPressed: () {}),
          8.hSpacing,
          PrimaryNomoButton(text: "Save", onPressed: () {}),
        ],
      ),
    ],
  ),
)
```

### 3. Responsive Design
Use responsive utilities for adaptive layouts:
```dart
DynamicRow(
  breakWidth: 768,
  children: widgets,
)

// Or conditional rendering
if (context.width > 600) {
  // Desktop layout
} else {
  // Mobile layout
}
```

### 4. Form Validation
Use built-in validators and compose them for complex validation:
```dart
NomoInput(
  validator: NomoFormValidator.compose([
    NomoFormValidator.required,
    NomoFormValidator.email,
  ]),
)
```

### 5. Loading States
Implement proper loading feedback:
```dart
PrimaryNomoButton(
  text: isLoading ? "" : "Submit",
  actionType: isLoading ? ActionType.loading : ActionType.def,
  onPressed: isLoading ? null : handleSubmit,
)
```

### 6. Spacing Consistency
Use standard spacing values:
```dart
// Common spacing values
8.vSpacing   // Small
12.vSpacing  // Default
16.vSpacing  // Medium
24.vSpacing  // Large
32.vSpacing  // Extra large
```

### 7. Error Handling
Provide clear error states:
```dart
NomoInput(
  errorText: errorMessage,
  borderColor: hasError ? context.colors.error : null,
)
```

### 8. Accessibility
Ensure interactive elements are accessible:
```dart
PrimaryNomoButton(
  text: "Submit",
  semanticsLabel: "Submit form",
  enabled: isFormValid,
)
```

## External Resources

- [API Documentation](https://dev.nomo.app/nomo-ui-kit)
- [Live Example App](https://dev.nomo.app/nomo-ui-kit/example_app/)
- [GitHub Repository](https://github.com/nomo-app/nomo-ui-kit)