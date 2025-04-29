//
//  Model.swift
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

//struct originPlanet: Codable,  Hashable{
//    
//    
//    //let id: String
//    let name: String?
//    let isDestroyed: String
//    let description: String?
//    let image: String?
//    let deletedAt: String?
//    
//
//    
//}

    
    
    
    
    
    
    
    
    
    
    

