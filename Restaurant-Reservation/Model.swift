//
//  Model.swift
//  Restaurant-Reservation
//
//  Created by Akhil Bisht on 07/08/24.
//
//
import SwiftUI

class Model: ObservableObject {
    @Published var tabViewSelectedIndex = 0
    @Published var reservations: [Reservation] = []
    @Published var displayingReservationForm = false
    @Published var restaurants: [Restaurant] = [
        Restaurant(name: "Oven-Express", city: "Jalandhar", neighborhood: "Deepnagar", phoneNumber: "123-456-7890"),
        Restaurant(name: "Hawkers", city: "Jalandhar", neighborhood: "Cantt", phoneNumber: "234-567-8901"),
        Restaurant(name: "EastWood", city: "Phagwara", neighborhood: "LPU", phoneNumber: "345-678-9012"),
        Restaurant(name: "Buzz", city: "Phagwara", neighborhood: "LPU", phoneNumber: "456-789-0123")
    ]
}

