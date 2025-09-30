/*
 | Feature     | `@State`                       | `@Binding`                            |
 | ----------- | ------------------------------ | ------------------------------------- |
 | Ownership   | Owns the data                  | Refers to data owned elsewhere        |
 | Scope       | Private to the declaring view  | Used in child views                   |
 | Use case    | Store and update local state   | Allow child view to edit parent state |
 | Re-renders  | Yes, when value changes        | Yes, when bound value changes         |
 | Declaration | `@State private var name = ""` | `@Binding var name: String`           |

 */


//@Binding is used to access and mutate state that is owned by a parent view.


import SwiftUI

struct BindingLesson: View {
    @State private var isOn = true // State owned by parent

    var body: some View {
        ToggleView(isOn: $isOn)  // Passing binding to child
            .padding()
            .navigationTitle("@Binding ")
    }
}

struct ToggleView: View {
    @Binding var isOn: Bool  // Binds to parent's state

    var body: some View {
        Toggle("Toggle Switch", isOn: $isOn)  // Can modify parent's state
    }
}


