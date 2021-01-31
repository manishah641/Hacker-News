//
//  PostData.swift
//  H4XOR News
//
//  Created by Syed Muhammad on 16/03/2020.
//  Copyright © 2020 Syed Muhammad. All rights reserved.
//

import Foundation
struct Result: Decodable {
    let hits : [Post]
}

struct Post:Decodable,Identifiable {
    var id : String {
        return objectID
    }
    let objectID :String
    let url : String?
    let title: String
    let points: Int
    
    
}
