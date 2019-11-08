# medisol
[![Codemagic build status](https://api.codemagic.io/apps/5da038339f20ef00142a677b/5da038339f20ef00142a677a/status_badge.svg)](https://codemagic.io/apps/5da038339f20ef00142a677b/5da038339f20ef00142a677a/latest_build)



## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

## To convert Keras to Tensorflow Lite Model
```import tensorflow as tf
import tensorflow.lite as lite
file = "malaria.h5"
# Converting a tf.keras model.
converter = lite.TFLiteConverter.from_keras_model_file(file)
tflite_model = converter.convert()
open("Malaria.tflite", "wb").write(tflite_model)```
