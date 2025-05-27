# SegmentKit

SegmentKit is a lightweight and reusable SwiftUI component that provides a customizable segment picker UI. Designed with flexibility and modularity in mind, SegmentKit supports dynamic segment options and allows easy configuration of layout, sizing, and styles through a dedicated configuration model.

---

## ✨ Features

- ⚙️ Fully customizable segment sizes, corner radius, colors, and spacing
- 📱 Pure SwiftUI – works seamlessly across iOS, macOS, iPadOS
- 🎯 Supports any number of segment choices with dynamic selection
- 🔄 Built-in animation for smooth selection transitions
- 📦 Ready for Swift Package Manager (SPM)

---

## 📦 Installation

### Using Swift Package Manager

1. Open your Xcode project.
2. Go to **File > Add Packages…**
3. Enter the URL of this repository:


https://github.com/FarrukhRasool/SegmentKit.git

4. Choose the latest version and press **Add Package**.

---

<img width="519" alt="Screenshot 2025-04-23 at 1 59 48 AM" src="https://github.com/user-attachments/assets/79e98785-1954-4c4e-ace4-05b313ae4132" />

## 🛠️ Usage

### 1. Import the Package

```swift
import SegmentKit

2. Define Your Segment Choices

let choices = [
    SegmentItemValue(id: 0, label: "Active"),
    SegmentItemValue(id: 1, label: "History"),
    SegmentItemValue(id: 2, label: "Pending")
]

3. Create the ViewModel

let viewModel = SegmentPickerViewModel(
    selectedIndex: 0,
    choices: choices
)

4. Use SegmentKit in Your View

SegmentKit(viewModel: viewModel) { selectedId in
    print("Selected index: \(selectedId)")
}


🧰 Configuration
You can customize the appearance using SegmentPickerConfiguration:

let customConfig = SegmentPickerConfiguration(
    width: 320,
    height: 60,
    cornerRadius: 20,
    selectorInset: 4,
    selectionOffset: 0
)

let viewModel = SegmentPickerViewModel(
    selectedIndex: 0,
    choices: choices,
    config: customConfig
)



📝 License
SegmentKit is released under the MIT License.

🙌 Credits
Created and maintained by Farrukh Rasool. Contributions welcome!

💬 Feedback
If you find a bug or have a feature request, feel free to open an issue or a pull request.


---
