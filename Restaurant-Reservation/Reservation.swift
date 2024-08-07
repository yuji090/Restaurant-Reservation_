//
//  Reservation.swift
//  Restaurant-Reservation
//
//  Created by Akhil Bisht on 07/08/24.
//
//
import Foundation

struct Reservation: Identifiable {
    let id = UUID()
    let restaurant: Restaurant
    let date: Date
    let name: String
    let phoneNumber: String
    let specialRequest: String?
}
