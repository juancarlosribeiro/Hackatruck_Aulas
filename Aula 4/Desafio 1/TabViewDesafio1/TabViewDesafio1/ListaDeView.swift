//
//  ListaDeView.swift
//  TabViewDesafio1
//
//  Created by Turma01-17 on 30/04/25.
//

import SwiftUI

struct ListaDeView: View {
    var body: some View {
        VStack{
            
            List{
                HStack{
                    Text("Rosa")
                    Spacer()
                    Image(systemName: "paintbrush")
                }
                
                HStack{
                    Text("Azul")
                    Spacer()
                    Image(systemName: "paintbrush.pointed")
                }
                
                HStack{
                    Text("Cinza")
                    Spacer()
                    Image(systemName: "paintpalette")
                }
                
                
            }
            
            
        }
        
    }
}

#Preview {
    ListaDeView()
}
