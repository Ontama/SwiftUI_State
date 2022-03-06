//
//  StateNadoApp.swift
//  Shared
//
//  Created by tomoyo_kageyama on 2022/03/04.
//

import SwiftUI

@main
struct StateNadoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(property: ToggleProperty())
        }
    }
}
