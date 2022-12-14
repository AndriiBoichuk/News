//
//  Article.swift
//  NewsApp
//
//  Created by Andrii Boichuk on 05.11.2022.
//

import Foundation

struct Article: Decodable {
    let source: Source
    let author: String?
    let title: String
    let description: String
    let url: String
    let urlToImage: String?
    let publishedAt: String
    let content: String
}
