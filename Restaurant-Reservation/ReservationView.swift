//
//  ReservationView.swift
//  Restaurant-Reservation
//
//  Created by Akhil Bisht on 07/08/24.
//
//
import SwiftUI

struct ReservationView: View {
    @EnvironmentObject var model: Model

    var body: some View {
        List(model.reservations) { reservation in
            VStack(alignment: .leading) {
                Text(reservation.restaurant.name)
                    .font(.headline)
                Text("Date: \(reservation.date, formatter: ReservationView.dateFormatter)")
                Text("Name: \(reservation.name)")
                Text("Phone: \(reservation.phoneNumber)")
                if let request = reservation.specialRequest, !request.isEmpty {
                    Text("Request: \(request)")
                }
            }
            .padding()
        }
        .navigationTitle("My Reservations")
    }

    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }()
}

#Preview {
    let sampleRestaurant = Restaurant(
        name: "Oven-Express",
        city: "Jalandhar",
        neighborhood: "Deepnagar",
        phoneNumber: "123-456-7890"
    )
    let sampleReservation = Reservation(
        restaurant: sampleRestaurant,
        date: Date(),
        name: "Akhil Bisht",
        phoneNumber: "123-456-7890",
        specialRequest: "Window seat"
    )

    let model = Model()
    model.reservations = [sampleReservation]

    return ReservationView()
        .environmentObject(model)
}
