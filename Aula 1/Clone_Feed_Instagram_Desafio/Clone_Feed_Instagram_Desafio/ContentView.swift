//
//  ContentView.swift
//  Clone_Feed_Instagram_Desafio
//
//  Created by Turma01-17 on 29/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{ 
            VStack{
                Text("Steve_Jobs")
                .padding()
            }
            Spacer()
            VStack{
                Image(systemName:"arrow.clockwise")
            }
            VStack{
                Image(systemName: "list.dash")

            }
        }
        
        HStack{
         
            VStack{
                Image("stevejobs")
                    .resizable()
                    .scaledToFit()
                    .scaledToFill()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 100,height: 100)
            }
            HStack{
                VStack {
                    Text("100")
                    Text("Posts")
                    }
                
                VStack{
                    Text("15M")
                    Text("Followers")
                    }
                
                VStack{
                    Text("12K")
                    Text("Following")
                    
                    
                }
                
                    
                }
                
            }
            .padding()
        VStack{
            HStack{
                Rectangle().fill(Color.gray)
                    .frame(width: 110, height: 110)
                Rectangle().fill(Color.gray)
                    .frame(width: 110, height: 110)
                Rectangle().fill(Color.gray)
                    .frame(width: 110, height: 110)
            }
            HStack{
                Rectangle().fill(Color.gray)
                    .frame(width: 110, height: 110)
                Rectangle().fill(Color.gray)
                    .frame(width: 110, height: 110)
                Rectangle().fill(Color.gray)
                    .frame(width: 110, height: 110)
            }
            HStack{
                Rectangle().fill(Color.gray)
                    .frame(width: 110, height: 110)
                Rectangle().fill(Color.gray)
                    .frame(width: 110, height: 110)
                Rectangle().fill(Color.gray)
                    .frame(width: 110, height: 110)
            }
            HStack{
                Rectangle().fill(Color.gray)
                    .frame(width: 110, height: 110)
                Rectangle().fill(Color.gray)
                    .frame(width: 110, height: 110)
                Rectangle().fill(Color.gray)
                    .frame(width: 110, height: 110)
            }
            HStack{
                Rectangle().fill(Color.gray)
                    .frame(width: 110, height: 110)
                Rectangle().fill(Color.gray)
                    .frame(width: 110, height: 110)
                Rectangle().fill(Color.gray)
                    .frame(width: 110, height: 110)
            }

            
            
        }
        
        }
    }

#Preview {
    ContentView()
}
