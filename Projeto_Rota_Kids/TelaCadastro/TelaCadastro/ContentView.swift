//
//  ContentView.swift
//  TelaCadastro
//
//  Created by Juan Carlos on 13/05/25.
//

import SwiftUI

struct ContentView: View {
    
    @State public var nome: String = ""
    @State public var telefone: String = ""
    @State public var endereco: String = ""
    @State public var apelido: String = ""
    @State public var observacoes: String = ""

    
    
    
    var body: some View {
        
        ZStack{
            Color.amarelo
                .ignoresSafeArea()
            
            VStack{
                
                VStack(alignment: .leading){
                    HStack{
                        Image("RotaKids")
                            .resizable()
                            .scaledToFit()
                            .scaledToFill()
                            .frame(width: 80,height: 80)
                        
                        Spacer()
                        
                    }.padding(.horizontal)
                        .background()
                }
         
                    ScrollView{
          
                        
                        VStack(alignment: .leading){
                            
                            
                            
                            Text("Nome do Responsável:")
                                .foregroundColor(.letra)
                                .bold()
                                .font(.system(size: 22))
                            
                            
                            TextField("  Nome:", text: $nome)
                                .background(Rectangle()
                                    .foregroundColor(.white)
                                    .frame(height: 30)
                                    .cornerRadius(50))
                            
                            
                            Text("Telefone do Responsável:")
                                .bold()
                                .foregroundColor(.letra)
                                .font(.system(size: 22))
                            
                            TextField("  Telefone:", text: $telefone)
                                .background(Rectangle()
                                    .foregroundColor(.white)
                                    .frame(height: 30)
                                    .cornerRadius(50))
                            
                            
                            
                            Text("Endereço:")
                                .bold()
                                .foregroundColor(.letra)
                                .font(.system(size: 22))
                            
                            TextField("  Endereço:", text: $endereco)
                                .background(Rectangle()
                                    .foregroundColor(.white)
                                    .frame(height: 30)
                                    .cornerRadius(50))
                            
                            
                            
                            Text("Criança:")
                                .bold()
                                .foregroundColor(.letra)
                                .font(.system(size: 22))
                            
                            TextField("  Nome:", text: $apelido)
                                .background(Rectangle()
                                    .foregroundColor(.white)
                                    .frame(height: 30)
                                    .cornerRadius(50))
                            
                            
                            
                            Text("Foto da criança:")
                                .bold()
                                .foregroundColor(.letra)
                                .font(.system(size: 22))
                            
                            TextField("", text: $observacoes, axis: .vertical)
                                .textFieldStyle(.roundedBorder)
                            
                            
                            
                            
                            Text("Observações:")
                                .bold()
                                .foregroundColor(.letra)
                                .font(.system(size: 22))
                            
                            TextField("  Observacoes:", text: $observacoes, axis: .vertical)
                                .textFieldStyle(.roundedBorder)
                            
                            Spacer(minLength: 40)
                            
                            
                            
                            

                        }.padding(.horizontal)
                        
                        HStack{
                            
                            Spacer()
                            
                            Button("Cadastrar"){}.foregroundColor(.white)
                                .bold()
                                .background(Rectangle()
                                    .foregroundColor(.botao)
                                    .cornerRadius(50)
                                    .frame(width: 150, height:50))
                                    .padding(.trailing, 40)
                            
                            
                            
                        }.padding(.horizontal)
                        
                        
                        Spacer()
                        
                            
                            
                        
                    }
                    
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
