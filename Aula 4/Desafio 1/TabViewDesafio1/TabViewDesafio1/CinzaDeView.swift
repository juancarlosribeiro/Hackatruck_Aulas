//
//  CinzaDeView.swift
//  TabViewDesafio1
//
//  Created by Turma01-17 on 30/04/25.
//

import SwiftUI

struct CinzaDeView: View {
    var body: some View {
        ZStack{
            Color.gray
                .edgesIgnoringSafeArea(.top)
            
            VStack{
                
                Image(systemName: "paintpalette")
                    .resizable()
                    .scaledToFit()
                    .scaledToFill()
                    .foregroundColor(.gray)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 250)
                    .background(Circle().frame(width: 360,height: 350))
                
            }
            
            
        }
    }
}

#Preview {
    CinzaDeView()
}
