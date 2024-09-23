//
//  PostData.swift
//  H4X0R(SwiftUI)
//
//  Created by Egor on 11.05.2024.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let points: Int
    let objectID: String
    let title: String
    let url: String?
}


//hits[0].points
//hits[0]._highlightResult.url.value
//hits[0]._highlightResult.title.value
//hits[0].objectID
