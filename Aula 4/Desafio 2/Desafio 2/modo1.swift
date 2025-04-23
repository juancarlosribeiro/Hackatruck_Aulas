//
//  modo1.swift
//  Desafio 2
//
//  Created by Turma01-17 on 06/04/25.
//

import SwiftUI

struct modo1: View {
    var body: some View {
        ZStack{
            Color.corDeFundo
            .ignoresSafeArea()
            
            VStack{
                Text("Modo 1")
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .offset(y: -300)
                
                
            }
            
            
            
            VStack{
                
                Text("Nome")
                    .foregroundColor(.white)
                
                Text("Sobrenome")
                    .foregroundColor(.white)
                
                
            }.background(Rectangle()
                .frame(width: 300, height: 200)
                .foregroundColor(.rosinhadeCaixa))
            
            
            
            
        }
        
        
        
        
    }
}

#Preview {
    modo1()
}
