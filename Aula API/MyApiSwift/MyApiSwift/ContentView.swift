

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewmodel = ViewModelMyApi()
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.blue
                    .ignoresSafeArea()
                
                ScrollView{
                    VStack{
                        
                        VStack{
                            
                            Text("Quitanda do João")
                                .font(.system(size: 40))
                                .foregroundColor(.white)
                            
                        }.padding()
                        
                        VStack(alignment: .leading){
                            
                            ForEach(viewmodel.fruteira, id: \.self){index in
                                ForEach(index.frutasDisponiveis, id: \.self){ fruta in
                                    
                                    VStack{
                                        
                                        NavigationLink(destination: viewoffrutas(recebe:fruta)){
                                    
                                            HStack{
                                                AsyncImage(url: URL(string: fruta.foto!)){image in image.resizable()
                                                        .scaledToFill()
                                                        .scaledToFit()
                                                        .frame(width: 150)
                                                    
                                                }placeholder: {
                                                    Image(systemName: "questionmark")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .scaledToFill()
                                                }
                                                
                                                
                                                
                                                
                                                Text(fruta.nome!)
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 20))
                                                Spacer()
                                            }
                                        }
                                    }
                                }
                                
                                
                            }
                            
                        }
                        
                        
                        
                       
                    }.padding()
                    
                }
                
            }.onAppear(){viewmodel.fetch()}
        }.tint(.white)
    }
}
    
#Preview {
    ContentView()
}
