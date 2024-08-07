//
//  RestaurantView .swift
//  Restaurant-Reservation
//
//  Created by Akhil Bisht on 07/08/24.
//
//
import SwiftUI

struct RestaurantView: View {
    var restaurant: Restaurant

    var body: some View {
        VStack(alignment: .leading) {
            Text(restaurant.name)
                .font(.headline)
            Text("\(restaurant.city), \(restaurant.neighborhood)")
                .font(.subheadline)
            Text(restaurant.phoneNumber)
                .font(.subheadline)
        }
        .padding()
    }
}

struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView(restaurant: Restaurant(name: "Oven-Express", city: "Jalandhar", neighborhood: "Deepnagar", phoneNumber: "123-456-7890"))
    }
}
