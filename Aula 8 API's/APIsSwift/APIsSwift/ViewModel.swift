//
//  ViewModel.swift
//  ApisNoSwift
//
//  Created by Turma01-17 on 29/04/25.
//

import Foundation


struct Item: Decodable, Hashable{

    let items: [DraBo]
 
}

struct DraBo: Decodable, Hashable{
    
  //  let id: String
    let name: String?
    let ki: String?
    let maxKi: String?
    let race: String?
    let gender: String?
    let description: String
    let image: String?
    let affiliation: String?
    let deletedAt: String?
}


class ViewModel: ObservableObject {
    
    @Published var characters: [DraBo] = []
    
    func fetch(){
        
        
        guard let url = URL(string: "https://dragonball-api.com/api/characters") else {
            
            return
            
        }
        
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            
            guard let data = data, error == nil else{
                
                return
                
            }
            do{
                
                let parsed = try JSONDecoder().decode(Item.self, from: data).items
                
                DispatchQueue.main.async {
                    self?.characters = parsed
                }
            } catch {
                
                print(error)
                
            }
        }
        task.resume()
        
    }
}


