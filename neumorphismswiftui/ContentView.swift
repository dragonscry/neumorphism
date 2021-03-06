//
//  ContentView.swift
//  neumorphismswiftui
//
//  Created by  Denis on 09.04.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Header()
            
            Title()
            
            LightSwitch()
                .padding(.top, 50)
            
            AirConditionButton()
                .padding(.leading, 20)
            
            MoreDevices()
                .padding(.leading, 20)
                .padding(.bottom, 50)
            
            Scenario()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Image("ash")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            Spacer()
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.gray, lineWidth: 1)
                    .frame(width: 50, height: 50)
                Image(systemName: "pencil")
                    .font(.system(size: 30))
            }
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 30)
    }
}

struct Title: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Your")
                    .font(.system(size: 35, weight: .bold, design: .default))
                Text("Preferences")
                    .font(.system(size: 35, weight: .bold, design: .default))
            }
            Spacer()
        }
        .padding(.leading, 20)
    }
}
