//
//  ReservationForm.swift
//  Restaurant-Reservation
//
//  Created by Akhil Bisht on 07/08/24.
//
//
import SwiftUI

struct ReservationForm: View {
    @EnvironmentObject var model: Model
    var restaurant: Restaurant
    @State private var date = Date()
    @State private var name = ""
    @State private var phoneNumber = ""
    @State private var specialRequest = ""
    
    var body: some View {
        Form {
            Section(header: Text("Reservation for \(restaurant.name)")) {
                DatePicker("Date", selection: $date, displayedComponents: [.date, .hourAndMinute])
                TextField("Your Name", text: $name)
                TextField("Your Phone Number", text: $phoneNumber)
                TextField("Special Request", text: $specialRequest)
            }
            
            Button("Submit Reservation") {
                let newReservation = Reservation(
                    restaurant: restaurant,
                    date: date,
                    name: name,
                    phoneNumber: phoneNumber,
                    specialRequest: specialRequest
                )
                model.reservations.append(newReservation)
                model.displayingReservationForm = false
                model.tabViewSelectedIndex = 1 // Switch to Reservation tab
            }
        }
        .navigationTitle("Reservation Form")
    }
}
