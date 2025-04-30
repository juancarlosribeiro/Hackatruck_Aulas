//
//  AzulDeView.swift
//  TabViewDesafio1
//
//  Created by Turma01-17 on 30/04/25.
//

import SwiftUI

struct AzulDeView: View {
    var body: some View {
        ZStack{
            Color.blue
                .edgesIgnoringSafeArea(.top)
            
            VStack{
                
                Image(systemName: "paintbrush.pointed")
                    .resizable()
                    .scaledToFit()
                    .scaledToFill()
                    .foregroundColor(.blue)
                    .frame(width: 80, height: 250)
                    .background(Circle().frame(width: 360,height: 350))
                
            }
            
            
            
        }
    }
}
#Preview {
    AzulDeView()
}
