//
//  ImageData.swift
//  shopping-app
//
//  Created by Telles Ivan on 7/29/23.
//

import Foundation
import SwiftUI

struct FruitModel {
   var id: Int
   var title: FruitTitle
   var image: String
   var price: String
   var color: Color
}

enum FruitTitle: String {
   case apple, apricot, avocado, banana,blackberry, cherry, dragonfruit, fig, grapes, kiwi, lemon, mango, muskmelon, orange,papaya, pear, pineapple, plum,raspberry, strawbery, watermelon
}
