//
//  ContentView.swift
//  Aula 2 Zstacks
//
//  Created by Turma01-17 on 30/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var nome: String = ""
    @State  private var showAlert = false
    
    var body: some View {
        
            
            ZStack{
                Image("caminhao")
                    .resizable()
                    .scaledToFit()
                    .scaledToFill()
                    .blur(radius: 3)
                    .opacity(0.5)
                    .ignoresSafeArea()
                
                VStack{
                Text("Bem vindo, \(nome) !")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    
                TextField("N:", text: $nome)
                        .frame(width: 200, alignment: .center)
                    
                    Spacer()
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .scaledToFill()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                                
                Image("truck")
                    .resizable()
                    .scaledToFit()
                    .scaledToFill()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)


                Spacer()
                Button("Entrar"){
                    showAlert = true
                    }
                
                .alert(isPresented: $showAlert){
                    Alert(
                        title: Text("ALERTA!"),
                        message:Text("Você irá iniciar o desafio da aula agora"),
                        dismissButton: .default(Text("Vamos lá!"))
                    )
                }
                }
                
                
            }
            
        }
        
    }


#Preview {
    ContentView()
}
