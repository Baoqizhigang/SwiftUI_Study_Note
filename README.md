# SwiftUI Learning Repository

This repository contains a collection of SwiftUI examples and learning projects, organized by topic and complexity. It serves as a personal learning resource and reference for various SwiftUI concepts.

## Table of Contents

- [View Modifiers](#view-modifiers)
- [Basic Views](#basic-views)
- [Layout](#layout)
- [State and Binding](#state-and-binding)
- [Scroll Views and Lists](#scroll-views-and-lists)
- [UI Controls](#ui-controls)
- [Navigation](#navigation)
- [Modal Views](#modal-views)
- [Pickers and Other Controls](#pickers-and-other-controls)
- [Data Flow](#data-flow)
- [User Defaults and File Manager](#user-defaults-and-file-manager)
- [Animations and Transitions](#animations-and-transitions)
- [Gestures](#gestures)
- [App Lifecycle](#app-lifecycle)
- [Project Structure](#project-structure)
- [Dependencies](#dependencies)
- [Requirements](#requirements)
- [Usage](#usage)
- [Author](#author)
- [License](#license)

## View Modifiers

This section explores various SwiftUI View Modifiers to customize the appearance and behavior of views.

- `02.1.ViewModifier.swift`: Demonstrates combining and layering views with modifiers for images, text, and layout.
- `02.3.ViewModifier 3.swift`: Shows the use of gradients, corner radius, and shadows for styling text.
- `02.4.ViewModifier 5.swift`: Focuses on text styling with different fonts, weights, and styles (italic, underline, strikethrough). (Note: Includes a "Customed Font Fail" example).
- `02.4.ViewModifier 6.swift`: Combines modifiers to create a styled UI, such as a login screen example.

## Basic Views

This section covers fundamental SwiftUI views like Text, Image, and Button.

- `03.1 BasicView_Text 1.swift`: Explores the `Text` view and its extensive modifiers for formatting and layout.
- `03.3 BasicView_Image 2.swift`: Demonstrates `Image` view usage, including resizing, scaling, safe area handling, and overlays.
- `03.5 BasicView_Button 1.swift`: Shows different ways to style buttons with custom appearances.
- `03.6 BasicView_Button 2.swift`: Covers built-in `ButtonStyle`s and button roles.
- `03.7 BasicView_Button 3.swift`: Further customizes buttons, including disabling, background images, and image/text combinations.
- `03.8 BasicView_Button 4.swift`: Creates a product card UI using `Image`, `Text`, and `Button` in a coordinated layout.

## Layout

This section explores SwiftUI's layout containers.

- `04.1 Layout_HStack 1.swift`: Demonstrates the use of `HStack` for horizontal layout.
- `04.2 Layout_VStack 1.swift`: Demonstrates the use of `VStack` for vertical layout.
- `04.3 Layout_ZStack 1.swift`: Demonstrates the use of `ZStack` for layering views.
- `04.4 Layout_Grid 1.swift`: Introduces the `Grid` view for creating grid-based layouts.
- `04.5 Layout_Grid 2.swift`: Further examples of using the `Grid` view.
- `04.6 Layout_Spacer 1.swift`: Shows how to use `Spacer` to distribute views within a layout.
- `04.7 Layout_GeometryReader.swift`: Demonstrates `GeometryReader` for creating dynamic layouts based on available space.
- `04.8 Layout_UI_Card.swift`: Likely an example of creating a reusable UI card component.

## State and Binding

This section covers managing data and state in SwiftUI.

- `05.1 State_Button 1.swift`: Demonstrates basic state management with a button.
- `05.2 State_Binding 1.swift`: Shows how to use `@Binding` to share state between views.
- `05.3 State_MusicPlayer.swift`: Likely a more complex example of state management in a music player scenario.

## Scroll Views and Lists

This section explores scrollable content and lists.

- `06.1 ScrollView_Vertical 1.swift`: Basic vertical `ScrollView` example.
- `06.1 ScrollView_Vertical 2.swift`: More advanced vertical `ScrollView` usage.
- `06.2 ScrollView_Horizontal 1.swift`: Basic horizontal `ScrollView` example.
- `06.2 ScrollView_Horizontal 2.swift`: More advanced horizontal `ScrollView` usage.
- `06.2 ScrollView_Horizontal 3.swift`: Additional horizontal `ScrollView` examples.
- `06.3 ScrollView_Diagonal 1.swift`: Example of a `ScrollView` that might scroll in multiple directions (though SwiftUI's ScrollView is primarily single-axis).
- `06.4 List 1.swift`: Basic `List` view example.
- `06.5 List 2.swift`: More advanced `List` usage.
- `06.6 List_TravelApp 3.swift`: A `List` example within a travel application context.
- `06.7 List_SettingPage 4.swift`: A `List` example for a settings page.

## UI Controls

This section covers standard UI controls in SwiftUI.

- `07.1 Label 1.swift`: Basic `Label` usage.
- `07.1 Label_in_List 2.swift`: Using `Label` within a `List`.
- `07.2 TextField 1.swift`: Demonstrates the `TextField` for user input.
- `07.3 Toggle 1.swift`: Shows how to use the `Toggle` control.
- `07.4 Slider 1.swift`: Demonstrates the `Slider` control.
- `07.5 Stepper 1.swift`: Shows how to use the `Stepper` control.
- `07.6 Picker 1.swift`: Demonstrates the `Picker` control.
- `07.7 DatePicker 1.swift`: Basic `DatePicker` usage.
- `07.7 DatePicker 2.swift`: More advanced `DatePicker` examples.
- `07.8 PhotoPicker 1.swift`: Shows how to use `PhotosPicker` to select photos.
- `07.9 SignUpPage 1.swift`: A more complete example of a sign-up page using various controls.

## Navigation

This section covers SwiftUI navigation.

- `08.1 NavigationStack 1.swift`: Basic `NavigationStack` usage.
- `08.2 NavigationStack_UINavigationBarAppearance 1.swift`: Customizing the navigation bar appearance.
- `08.3 NavigationStack_Path 1.swift`: Using `NavigationStack` with a path for programmatic navigation.
- `08.3 NavigationStack_Path 2.swift`: Further examples of `NavigationStack` with paths.
- `08.4 TabView 1.swift`: Basic `TabView` usage.
- `08.4 TabView 2.swift`: More advanced `TabView` examples.
- `08.4 TabView 3.swift`: Additional `TabView` examples.
- `08.4 TabView_TravelApp 4.swift`: A `TabView` example within a travel application.

## Modal Views

This section covers presenting modal content.

- `09.1 ModalView_Sheet 1.swift`: Basic `Sheet` presentation.
- `09.1 ModalView_Sheet 2.swift`: More advanced `Sheet` usage.
- `09.2 ModalView_Alert 1.swift`: Basic `Alert` presentation.
- `09.2 ModalView_Alert 2.swift`: More advanced `Alert` usage.
- `09.3 ModalView_ConfirmationDialog 1.swift`: Basic `ConfirmationDialog` usage.
- `09.3 ModalView_ConfirmationDialog 2.swift`: More advanced `ConfirmationDialog` usage.
- `09.4 ModalView_ActivityView 1.swift`: Showing the `ActivityViewController` for sharing.
- `09.5 ModalView_Popover 1.swift`: Presenting a `Popover`.
- `09.6 ModalView_ContextMenu 1.swift`: Using `ContextMenu`.
- `09.7 ModalView_ContactApp 1.swift`: A modal view example within a contact application.

## Pickers and Other Controls

This section covers additional specialized controls.

- `10.1 SegmentedPicker 1.swift`: Demonstrates the `SegmentedPicker`.
- `10.2 ColorPicker 1.swift`: Shows how to use the `ColorPicker`.
- `10.3 DisclosureGroup 1.swift`: Demonstrates the `DisclosureGroup` for collapsible content.
- `10.4 ProgressView 1.swift`: Shows how to use the `ProgressView`.
- `10.5 Gauge 1.swift`: Demonstrates the `Gauge` control.
- `10.6 MiniProject 1.swift`: A small, self-contained project showcasing multiple concepts.

## Data Flow

This section covers different ways to manage data flow in SwiftUI.

- `11.1 DataFlow_State 1.swift`: More examples of `@State`.
- `11.2 DataFlow_Binding 1.swift`: More examples of `@Binding`.
- `11.3 DataFlow_ObservableObject 1.swift`: Using `@ObservableObject` for managing data.
- `11.3 DataFlow_ObservableObject 2.swift`: Further examples of `@ObservableObject`.

## User Defaults and File Manager

This section covers data persistence.

- `12.1 UserDefaults 1.swift`: Using `UserDefaults` for simple data storage.
- `12.2 FileManager 1.swift`: Working with the `FileManager` for file system operations.

## Animations and Transitions

This section explores adding animations to SwiftUI views.

- `13.1 Animation 1.swift`: Basic animations.
- `13.1 Animation_AsyncAfter 2.swift`: Using `withAnimation` and `DispatchQueue.main.asyncAfter` for delayed animations.
- `13.1 Animation_Modifier 3.swift`: Creating custom animation modifiers.
- `13.2 Transition 1.swift`: Basic view transitions.
- `13.2 Transition 2.swift`: More advanced transitions.
- `13.2 Transition 3.swift`: Additional transition examples.

## Gestures

This section covers handling user gestures.

- `14.1 TapGesture 1.swift`: Recognizing tap gestures.
- `14.2 LongPressGesture 1.swift`: Recognizing long press gestures.
- `14.3 DragGesture 1.swift`: Handling drag gestures.
- `14.4 MagnificationGesture 1.swift`: Recognizing magnification (pinch) gestures.
- `14.5 RotationGesture 1.swift`: Recognizing rotation gestures.

## App Lifecycle

- `15.1 AppLifeCircle 1.swift`: Demonstrates handling different stages of the app lifecycle.

## Project Structure

The project is organized into folders corresponding to the SwiftUI topics. Each topic has one or more Swift files demonstrating specific concepts.
