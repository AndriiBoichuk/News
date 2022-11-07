//
//  News.swift
//  NewsApp
//
//  Created by Andrii Boichuk on 05.11.2022.
//

import Foundation

struct News: Decodable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}
