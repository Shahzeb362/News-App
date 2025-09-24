//
//  PostData.swift
//  Hacker News
//
//  Created by Shahzeb Khan on 15.09.25.
//

import Foundation

struct Results: Codable{
    
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    
    var id: String{
        return objectID
    }
    
    let objectID: String
    let title: String
    let points: Int
    let url: String?
    
   
}
