//
//  ContentView.swift
//  Shared
//
//  Created by tomoyo_kageyama on 2022/03/04.
//

import SwiftUI

class ToggleProperty : ObservableObject {
    @Published var isShow = true
    @Published var value = 0.0
}

struct ContentView: View {
    @ObservedObject var property: ToggleProperty
    
    var body: some View {
        Toggle(isOn: $property.isShow, label: {
            Text("Favorite")
        })
        Slider(value: $property.value, in: 0...100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(property: ToggleProperty())
    }
}
