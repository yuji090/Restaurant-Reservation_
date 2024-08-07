//
//  Restaurant.swift
//  Restaurant-Reservation
//
//  Created by Akhil Bisht on 07/08/24.
//
//

import Foundation

struct Restaurant: Identifiable {
    let id = UUID()
    let name: String
    let city: String
    let neighborhood: String
    let phoneNumber: String
}
