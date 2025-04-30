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
            
            
                VStack{
                    Text("Modo 1")
                        .bold()
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    
                }
                
                Spacer()
   
                VStack{
                    
                    Text("Mario")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                    
                    Text("Júnior")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                    
                    
                }.background(Rectangle()
                    .frame(width: 300, height: 200)
                    .foregroundColor(.rosinhadeCaixa))
                
                
                Spacer()
                
                
            }
            
            
            
            
        }
        
        
        
        
    }
}

#Preview {
    modo1()
}
