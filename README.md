# SpeakScreen
Spoken Content -> Speak Screen is not reading the content of WKWebView.

Basic Information
Please provide a descriptive title for your feedback:
Spoken Content -> Speak Screen is not reading the content of WKWebView

Which area are you seeing an issue with?
Accessibility

What type of feedback are you reporting?
Incorrect/Unexpected Behavior

Details
What does the accessibility issue you are seeing involve?
Hearing Aids

Description: (Please describe the issue and what steps we can take to reproduce it)
Speak Content -> Speak Screen is not reading the content of WKWebView. Speak screen skip over WKWebView and starts reading the content of sibling views. It should finish reading WKWebView first before moving on to the other/sibling views/controls on the screen.

Steps:
I’ve attached the project. Turn on the speak screen from iOS Settings -> Accessibility -> Spoken Content -> Speak Screen. Launch the app from the attached Xcode project. After running the app, swipe down with two fingers from the top of the screen to hear the content of the screen.

Expected:
It should read the whole content of the WKWebView first and then read the label at the bottom of the screen.

Actual Result:
It reads very little content (heading etc) of the WKWebView and then quickly jumps to reading the label at the bottom of the screen. Then it stops.
