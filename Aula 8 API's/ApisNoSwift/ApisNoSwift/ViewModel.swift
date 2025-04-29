//
//  ViewModel.swift
//  ApisNoSwift
//
//  Created by Turma01-17 on 29/04/25.
//

import Foundation

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
    
    
