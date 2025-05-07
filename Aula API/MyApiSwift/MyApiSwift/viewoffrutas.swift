//
//  viewoffrutas.swift
//  MyApiSwift
//
//  Created by Turma01-17 on 07/05/25.
//

import SwiftUI

struct viewoffrutas: View {
    var recebe: frutinha
    
    var body: some View {
        
        ZStack{
            Color.blue
                .ignoresSafeArea()
            
            VStack{
                
                
                VStack{
                    AsyncImage(url: URL(string: recebe.foto!)){ image in
                        image
                            .resizable()
                            .scaledToFill()
                            .scaledToFit()
                            .frame(width: 350)
                            .cornerRadius(10)
                    } placeholder: {
                        Image(systemName: "questionmark.app")
                            .resizable()
                            .scaledToFill()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .foregroundColor(.black)
                        
                       
                        
                        
                        
                    }
                }
                VStack{
                    Text(recebe.nome!)
                    Text(recebe.nutrientes!)
                    
                }
            }
        }
    }
}

#Preview {
    viewoffrutas(recebe: frutinha(nome: "", foto: "", nutrientes: ""))
    }
