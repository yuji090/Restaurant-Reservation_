//
//  MainView.swift
//  Restaurant-Reservation
//
//  Created by Akhil Bisht on 07/08/24.
//
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var model: Model
    
    var body: some View {
        TabView(selection: $model.tabViewSelectedIndex) {
            LocationView()
                .tag(0)
                .tabItem {
                    Label("Locations", systemImage: "fork.knife")
                }
            
            ReservationView()
                .tag(1)
                .tabItem {
                    Label("Reservation", systemImage: "calendar")
                }
        }
    }
}
#Preview {
    MainView()
        .environmentObject(Model())

}
