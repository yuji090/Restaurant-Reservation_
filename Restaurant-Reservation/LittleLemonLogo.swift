//
//  LittleLemonLogo.swift
//  Restaurant-Reservation
//
//  Created by Akhil Bisht on 07/08/24.
//
//
import SwiftUI

struct LittleLemonLogo: View {
    var body: some View {
        Image(systemName: "fork.knife")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .padding()
    }
}

struct LittleLemonLogo_Previews: PreviewProvider {
    static var previews: some View {
        LittleLemonLogo()
    }
}
