//
//  swui_01App.swift
//  swui-01
//
//  Created by bap on 13/11/2022.
//

import SwiftUI

@main
struct swui_01App: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
