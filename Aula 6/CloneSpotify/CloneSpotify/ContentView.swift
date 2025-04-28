//
//  ContentView.swift
//  CloneSpotify
//
//  Created by Turma01-17 on 08/04/25.
//

import SwiftUI

struct Song : Hashable {
    
    var name: String
    var artist: String
    var capa: String
}





struct ContentView: View {
    var body: some View {
    
        
        var arrayMusiquinhas = [
        
            Song(name: "What I've Done", artist: "Linkin Park", capa: "https://i.scdn.co/image/ab67616d00001e02ea6a71bf394a763f2aa04904"),
            
            Song(name: "The Emptiness Machine", artist: "Linkin Park", capa: "https://i.scdn.co/image/ab67616d0000b273b11a5489e8cb11dd22b930a0"),
            
            Song(name: "Eu vou largar de ser besta", artist: "Manoel Gomes", capa: "https://i.scdn.co/image/ab67616d00001e02b13483c707cce1fcda7e0a34"),
            
            Song(name: "Homens", artist: "Leonardo", capa: "https://i.scdn.co/image/ab67616d00001e02042943efe042faa492593462"),
            
            Song(name: "Vampire", artist: "Olivia Rodrigo", capa: "https://i.scdn.co/image/ab67616d00001e02e85259a1cae29a8d91f2093d"),
            
            Song(name: "Leão", artist: "Marilia Mendonca", capa: "https://i.scdn.co/image/ab67616d00001e02cca35237571dbce12a43fbb4"),
            
            Song(name: "Tá Rocheda", artist: "Barões da Pisadinha", capa: "https://i.scdn.co/image/ab67616d00001e027565a4bf6b379cab62afd320")

        
        
        
        
        
        
        ]
        
        
        
        
        NavigationStack{
            
            
            
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                ScrollView{
                    VStack{
                        VStack{
                            Image("capa")
                                .resizable()
                                .scaledToFill()
                                .scaledToFit()
                                .frame(width: 250)
                            
                            Text("My Playlist")
                                .foregroundColor(.white)
                                .font(.system(size: 30))
                                .frame(width: 350 ,alignment: .leading)
                            HStack{
                                Image("capa")
                                    .resizable()
                                    .scaledToFill()
                                    .scaledToFit()
                                    .frame(width: 40)
                                
                                Text("Juan Carlos")
                                    .foregroundColor(.white)
                                
                                Spacer()
                                
                            }.padding(.horizontal)
                            
                        }
                        
                        
                        VStack(alignment: .leading){
                            
                            NavigationStack{
                                
                                VStack(alignment: .leading){
                                    
                                    ForEach(arrayMusiquinhas, id: \.self) { index in
                                        NavigationLink(destination: MusicasView(recebe: index)){
                                            HStack{
                                                AsyncImage(url: URL(string: index.capa)){ image in
                                                    image.resizable()
                                                } placeholder: {ProgressView()}
                                                    .frame(width: 60, height: 60)
                                                
                                                VStack(alignment: .leading){
                                                    
                                                    Text(index.name)
                                                        .foregroundColor(.white)
                                                    Text(index.artist)
                                                        .foregroundColor(.white)
                                                    
                                                    
                                                }.padding()
                                                Spacer()
                                                
                                                Image(systemName: "ellipsis")
                                                    .foregroundColor(.white)
                                            }.padding(.horizontal)
                                        }
                                    }
                                }
                                
                            }
                                
                            
                            
                        }
                        
                        
                        VStack(alignment: .trailing){
                            HStack{
                                Text("Sugeridos")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                Spacer()
                            }
                            
                        }.padding()
                        
                        
                        
                        ScrollView(.horizontal){
                            
                            HStack{
                                
                                ForEach(arrayMusiquinhas, id: \.self) { index in
                                    
                                    
                                    
                                    NavigationLink(destination: MusicasView(recebe: index)){
                                        
                                        VStack{
                                            AsyncImage(url: URL(string: index.capa)){ image in
                                                image.resizable()
                                            } placeholder: {ProgressView()}
                                                .frame(width: 200, height: 200)
                                            
                                            HStack{
                                                
                                                Text(index.artist)
                                                    .foregroundColor(.white)
                                                
                                            }
                                            
                                        }
                                    }
                                }
                            }
                            
                        }
                        
                        
                        
                        
                        
                    }
                }
                
            }
            
            
            
            
        }
        
    }
}


#Preview {
    ContentView()
}
