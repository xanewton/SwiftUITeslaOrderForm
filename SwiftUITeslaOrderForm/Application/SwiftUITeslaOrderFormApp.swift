//
//  SwiftUITeslaOrderFormApp.swift
//  SwiftUITeslaOrderForm
//
//  Created by newtan on 2021-02-18.
//

import SwiftUI

@main
struct SwiftUITeslaOrderFormApp: App {
    @StateObject private var order = OrderViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(order)
        }
    }
}
