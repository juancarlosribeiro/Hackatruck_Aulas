//
//  ContentView.swift
//  TelaCadastro
//
//  Created by Juan Carlos on 13/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Color.amarelo
                .ignoresSafeArea()
        
            VStack (alignment: .leading){
                
                VStack{
                    HStack{
                        Image("RotaKids")
                            .resizable()
                            .scaledToFit()
                            .scaledToFill()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                        
                    }
                    Divider()
                        .bold()
                        .foregroundColor(.black)
                }
                
                
                VStack(alignment: .leading){
                   
                    
                    HStack{
                        Text("Nome do Responsável:")
                            .bold()
                            .font(.system(size: 22))
                            
                    }
                    HStack{
                            
                        Text("text field")

                        
                    }
                    HStack{
                        Text("Telefone do Responsável:")
                            .bold()
                            .font(.system(size: 22))


                    }
                    HStack{
                        Text("Endereço:")
                            .bold()
                            .font(.system(size: 22))


                    }
                    HStack{
                        Text("Criança:")
                            .bold()
                            .font(.system(size: 22))


                    }
                    HStack{
                        Text("Foto da criança:")
                            .bold()
                            .font(.system(size: 22))


                    }
                    HStack{
                        Text("Observações:")
                            .bold()
                            .font(.system(size: 22))


                    }
                    
                    Spacer()
                    
                    
                    
                    
                }.padding(.vertical)
                
                Spacer()
                
            }
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
