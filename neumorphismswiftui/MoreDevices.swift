//
//  MoreDevices.swift
//  neumorphismswiftui
//
//  Created by  Denis on 10.04.2021.
//

import SwiftUI

struct MoreDevices: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color(#colorLiteral(red: 0.6134403348, green: 0.6097966433, blue: 0.6162432432, alpha: 1)), lineWidth: 1)
                .frame(width: 325, height: 110)
            VStack(alignment: .leading){
                Text("Add more devices to enhance your experience")
                    .font(.system(size: 22, weight: .bold, design: .default))
            }
            .frame(width: 300)
            .padding(.trailing, 30)
        }
    }
}

struct MoreDevices_Previews: PreviewProvider {
    static var previews: some View {
        MoreDevices()
    }
}
