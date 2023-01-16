//
//  PostData.swift
//  HACKER NEWS
//
//  Created by Soo Jang on 2023/01/09.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
