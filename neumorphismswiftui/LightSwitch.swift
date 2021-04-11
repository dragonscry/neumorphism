//
//  LightSwitch.swift
//  neumorphismswiftui
//
//  Created by  Denis on 09.04.2021.
//

import SwiftUI

struct LightSwitch: View {
    
    @State var Switch = false
    @State var viewState = CGSize.zero
    @State var isDragged = false
    
    var body: some View {
        HStack {
            LightButton(Switch: $Switch, viewState: $viewState, isDragged: $isDragged)
            Spacer()
                .frame(width: isDragged ? 0 : 10)
            PlusButton(isDragged: $isDragged)
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
    
    @Binding var Switch: Bool
    @Binding var viewState : CGSize
    @Binding var isDragged : Bool
    
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
                        .foregroundColor(Switch ? Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)) : Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(Switch ? 0 : 0.15), radius: 10, x: 10, y: 10)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(Switch ? 0 : 1), radius: 3, x: -5, y: -5)
                }
                .frame(width: 76, height: 50)
                .background(Switch ? Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .cornerRadius(19)
                .padding(.horizontal, 4)
                .padding(.top, 10)
                .offset(y: Switch ? 50 : 0)
                .onTapGesture {
                    withAnimation(.spring()){
                        Switch.toggle()
                    }
                }
                
                Spacer()
                Text(Switch ? "Off" : "On")
                    .font(.system(size: 22, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                    .offset(y: Switch ? -50 : 0)
                    .animation(.spring())
            }
            .frame(height:120)
            .background(Switch ? Color(#colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)).opacity(0.7) : Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
            .cornerRadius(20)
            .padding(.trailing, 10)
            
        }
        .frame(width: isDragged ? 250 : 230, height: 135)
        .background(Color.blue)
        .cornerRadius(30)
        .animation(.spring())
        
        .offset(x: viewState.width, y: viewState.height)
        
        .gesture(
        
            DragGesture()
                .onChanged{ value in
                self.viewState = value.translation
                if self.viewState.width > 10 {
                    self.isDragged = true
                }
            }
            .onEnded{ value in
                if self.viewState.width < 10 {
                    self.isDragged = false
                }
                
                self.viewState = .zero
            }
            
        )
    }
}

struct PlusButton: View {
    
    @Binding var isDragged : Bool
    
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
        .offset(x: isDragged ? 200 : 0)
        .animation(.spring())
    }
}
