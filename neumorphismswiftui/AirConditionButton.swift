//
//  AirConditionButton.swift
//  neumorphismswiftui
//
//  Created by  Denis on 10.04.2021.
//

import SwiftUI

struct AirConditionButton: View {
    var body: some View {
        HStack{
            
            VStack(alignment: .leading){
                Text("Air Condition")
                    .font(.system(size: 22, weight: .medium, design: .default))
                Text("Connected")
                    .font(.system(size: 15, weight: .medium, design: .default))
                    .foregroundColor(.gray)
                    .padding(.top, 5)
            }
            .padding(.leading, 20)
            Spacer()
            
            ZStack {
                
                Circle()
                    .frame(width: 90, height: 90)
                    .foregroundColor(Color(#colorLiteral(red: 0.8739553094, green: 0.8780004382, blue: 0.887886107, alpha: 1)))
                Circle()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Color(#colorLiteral(red: 0.9861651063, green: 0.980302155, blue: 0.9906714559, alpha: 1)))
                    .shadow(color: Color(#colorLiteral(red: 0.8639246821, green: 0.8599401116, blue: 0.9769913554, alpha: 1)), radius: 10, x: 15, y: 25)
                    .shadow(color: Color(#colorLiteral(red: 0.8620161414, green: 0.875582993, blue: 0.9759576917, alpha: 1)), radius: 5, x: 15, y: 15)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 8, x: -5, y: -5)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.3), radius: 5, x: -5, y: -5)
                Circle()
                    .strokeBorder(
                        style: StrokeStyle(
                            lineWidth: 2, dash: [5]
                        )
                    )
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
            }
            .frame(width: 90, height: 90)
            .padding(.trailing, 20)
        }
        .frame(width: 300, height: 120)
        .background(Color(#colorLiteral(red: 0.9383453727, green: 0.9327672124, blue: 0.9426332116, alpha: 1)))
        .cornerRadius(20)
    }
}

struct AirConditionButton_Previews: PreviewProvider {
    static var previews: some View {
        AirConditionButton()
    }
}
