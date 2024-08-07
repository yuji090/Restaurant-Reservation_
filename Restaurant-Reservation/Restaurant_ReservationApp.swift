//
//  Restaurant_ReservationApp.swift
//  Restaurant-Reservation
//
//  Created by Akhil Bisht on 07/08/24.
//
//

import SwiftUI

@main
struct pkApp: App {
    @StateObject private var model = Model()

    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(model)
        }
    }
}
