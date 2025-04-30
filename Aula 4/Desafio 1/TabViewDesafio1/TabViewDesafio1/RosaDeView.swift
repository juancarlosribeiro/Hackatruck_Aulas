//
//  RosaDeView.swift
//  TabViewDesafio1
//
//  Created by Turma01-17 on 30/04/25.
//

import SwiftUI

struct RosaDeView: View {
    var body: some View {
        ZStack{
            Color.pink
                .edgesIgnoringSafeArea(.top)
            
            VStack{
                
                Image(systemName: "paintbrush.fill")
                    .resizable()
                    .scaledToFit()
                    .scaledToFill()
                    .foregroundColor(.pink)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 270)
                    .background(Circle().frame(width: 360,height: 350))
                
            }
            
            
            
            
            
        }
        
        
        
    }
}

#Preview {
    RosaDeView()
}
