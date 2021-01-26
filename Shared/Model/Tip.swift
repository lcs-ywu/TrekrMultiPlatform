//
//  Tip.swift
//  TrekrMultiPlatform
//
//  Created by James Wu on 2021-01-25.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
