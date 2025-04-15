//
//  ContentView.swift
//  Aula01Desafio2
//
//  Created by Turma01-17 on 29/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack{
            Image("hachatruck")
                .resizable()
                .scaledToFit()
                .scaledToFill()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
        
            VStack {
                
                Text("Hackatruck")
                    .foregroundColor(.red)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Text("77 universidades")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
                
                Text("5 regiões do Brasil")
                    .foregroundColor(.yellow)
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
