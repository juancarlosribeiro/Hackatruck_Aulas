//
//  modo2.swift
//  Desafio 2
//
//  Created by Turma01-17 on 06/04/25.
//

import SwiftUI


struct modo2: View {
    
    @State public var nome: String = ""
    
    
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                Color.corDeFundo
                    .ignoresSafeArea()
                
                
                
                
                VStack{
                    
                    TextField("Teste", text: $nome)
                        .frame(width: 150, height: 60)
                        .foregroundColor(.white)
                    
                    Text("Bem vindo, \(nome) !")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .bold()
                    
                    
                    
                    NavigationLink(destination: modo2de2(nome: nome)){
                        
                        
                        
                        
                        Text("Acessar Tela")
                            .foregroundColor(.white)
                            .bold()
                            .frame(width: 150, height: 60)
                            .background(.blue)
                            .cornerRadius(6)
                            
                      
                        
                        
                    }
                    
                    
                }.background(Rectangle()
                    .foregroundColor(.rosinhadeCaixa)
                    .frame(width: 330, height:250 )
                    .cornerRadius(10))
                
                
                
                
                
                
                
            }
            
            
        }
    }
}

#Preview {
    modo2()
}
