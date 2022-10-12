//
//  FruitModel.swift
//  Fructus
//
//  Created by דניאל פינחסוב on 16/08/2021.
//

import SwiftUI

//mark: fruits data model

struct Fruit: Identifiable{
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
    
}
