

import Foundation



struct Fruit: Decodable, Hashable{
    
    let nomeQuitanda: String?
    let enderecoQuitanda: String?
    let frutasDisponiveis: [frutinha]
    

   
        
}
    
    

    
    
struct frutinha: Decodable, Hashable{
    let nome: String?
    let foto: String?
    let nutrientes: String?
    
}
    
    
    
    
    
    
    
    

