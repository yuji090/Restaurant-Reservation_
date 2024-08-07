//
//  LocationView.swift
//  Restaurant-Reservation
//
//  Created by Akhil Bisht on 07/08/24.
//
//

import SwiftUI

struct LocationView: View {
    @EnvironmentObject var model: Model
    
    var body: some View {
        VStack {
            LittleLemonLogo()
                .padding(.top, 50)

            Text(model.displayingReservationForm ? "Reservation Details" : "Select a location")
                .padding([.leading, .trailing], 40)
                .padding([.top, .bottom], 8)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)
            
            NavigationView {
                List(model.restaurants) { restaurant in
                    NavigationLink(destination: ReservationForm(restaurant: restaurant)) {
                        RestaurantView(restaurant: restaurant)
                    }
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
        }
        .padding()
    }
}
