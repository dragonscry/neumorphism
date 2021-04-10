//
//  LightSwitch.swift
//  neumorphismswiftui
//
//  Created by  Denis on 09.04.2021.
//

import SwiftUI

struct LightSwitch: View {
    var body: some View {
        HStack {
            LightButton()
            Spacer()
            PlusButton()
        }
        .padding(.horizontal, 15)
    }
}

struct LightSwitch_Previews: PreviewProvider {
    static var previews: some View {
        LightSwitch()
    }
}

struct LightButton: View {
    var body: some View {
        HStack{
            VStack (alignment: .leading) {
                Text("Light")
                    .font(.system(size: 22, weight: .medium, design: .default))
                    .foregroundColor(.white)
                Text("Connected")
                    .font(.system(size: 22, weight: .medium, design: .default))
                    .foregroundColor(Color(#colorLiteral(red: 0.8941655159, green: 0.8888503909, blue: 0.8982514739, alpha: 1)))
                    .padding(.top, 5)
            }
            .padding(.leading, 20)
            Spacer()
            VStack{
                VStack{
                    RoundedRectangle(cornerRadius: 15, style: .continuous)
                        .frame(width: 60, height: 38)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.15), radius: 10, x: 10, y: 10)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 3, x: -5, y: -5)
                }
                .frame(width: 76, height: 50)
                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .cornerRadius(19)
                .padding(.horizontal, 4)
                .padding(.top, 10)
                Spacer()
                Text("On")
                    .font(.system(size: 22, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
            }
            .frame(height:120)
            .background(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
            .cornerRadius(20)
            .padding(.trailing, 10)
            
        }
        .frame(width: 230, height: 135)
        .background(Color.blue)
        .cornerRadius(30)
    }
}

struct PlusButton: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .strokeBorder(
                    style: StrokeStyle(
                        lineWidth: 2, dash: [8]
                    )
                )
                .frame(width: 135, height: 135)
                .foregroundColor(Color(#colorLiteral(red: 0.7606800795, green: 0.7561596632, blue: 0.7641557455, alpha: 1)))
            Image(systemName: "plus")
                .font(.system(size: 30))
                .foregroundColor(Color(#colorLiteral(red: 0.7606800795, green: 0.7561596632, blue: 0.7641557455, alpha: 1)))
        }
    }
}
