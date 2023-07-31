//
//  FruitCardView.swift
//  shopping-app
//
//  Created by Telles Ivan on 7/29/23.
//

import SwiftUI

let image: FruitModel = FruitModel(id: 1, title: .apple, image: "apple", price: "$3.44", color: ._1)

struct FruitCardView: View {
//   allow for fruits to be passed down this model via param
   let fruit: FruitModel
   
    var body: some View {
       ZStack{
          VStack(alignment: .leading,spacing: 8){
             Text(fruit.title.rawValue)
                .font(.system(.title3))
                .fontWeight(.semibold)
                .foregroundStyle(.black)
             Text(fruit.price)
                .foregroundStyle(.black)
             Spacer()
          }
          .padding()
          .frame(width: 240, height: 150, alignment: .center)
          .background(.white)
          .cornerRadius(20)
          .padding()
          .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.13), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
          ZStack{
             Image(fruit.image)
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 80)
          }
         .offset(y:60)
       }
       .frame(width: 240, height: 210, alignment: .topLeading)
    }
}

#Preview {
   FruitCardView(fruit: image)
}
