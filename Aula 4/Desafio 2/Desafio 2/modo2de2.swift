//
//  modo2de2.swift
//  Desafio 2
//
//  Created by Turma01-17 on 06/04/25.
//

import SwiftUI

struct modo2de2: View {
    var body: some View {
        ZStack{
            Color.corDeFundo
            .ignoresSafeArea()
            
            
            VStack{
                
                Text("Volte, sei lá!")
                    .foregroundColor(.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
            }.background(Rectangle()
                .frame(width: 200, height: 100)
                .foregroundColor(.rosinhadeCaixa)
                .cornerRadius(20))
            
            
            
            
            
            
            
            
            
            
        }
    }
}
#Preview {
    modo2de2()
}
