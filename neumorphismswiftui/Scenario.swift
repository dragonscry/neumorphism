//
//  Scenario.swift
//  neumorphismswiftui
//
//  Created by  Denis on 10.04.2021.
//

import SwiftUI

struct Scenario: View {
    var body: some View {
        HStack {
            Text("Turn on the scenario of presence")
                .font(.system(size: 19, weight: .bold, design: .default))
                .padding(.leading, 20)
            
            Spacer()
            
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)))
                    .frame(width: 100, height: 90)
                    .shadow(color: Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)).opacity(0.25), radius: 10, x:0, y:10)
                Image(systemName: "arrow.right")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
            }
            .padding(.trailing, 20)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 120)
        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
        .cornerRadius(30)
        .padding(.horizontal, 20)

    }
}

struct Scenario_Previews: PreviewProvider {
    static var previews: some View {
        Scenario()
    }
}
