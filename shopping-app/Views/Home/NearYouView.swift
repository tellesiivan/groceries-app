 //
//  NearYouView.swift
//  shopping-app
//
//  Created by Telles Ivan on 7/30/23.
//

import SwiftUI

struct NearYouView: View {
   let dataArray: [PlacesModel] = [
      .init(id: 0, name: "Food 365 Valley", time: "9:00 - 10:00", rating: "★ 4.7 |📍 1.5 km", image: "1"),
      .init(id: 1, name: "Super Store", time: "8:00 - 10:00", rating: "★ 4.5 |📍 1.7 km", image: "2"),
      .init(id: 2, name: "Organic Farm", time: "6:00 - 11:00", rating: "★ 4.9 |📍 2.0 km", image: "3"),
      .init(id: 3, name: "Big Basket", time: "9:00 - 10:00", rating: "★ 3.7 |📍 2.2 km", image: "4"),
      .init(id: 4, name: "Easy Mart", time: "8:00 - 12:00", rating: "★ 4.7 |📍 2.7 km", image: "5"),
      .init(id: 5, name: "Let's Shop", time: "7:00 - 11:00", rating: "★ 4.0 |📍 3.0 km", image: "6")
   ]
   
    var body: some View {
       VStack(alignment: .leading, spacing:10){
             Text("Near You")
                .font(.system(size: 20))
                .fontWeight(.medium)
                .padding(10)
             ForEach(dataArray, id: \.id) { place in
                HStack(spacing:20){
                   RoundedRectangle(cornerRadius: 6)
                      .foregroundColor(.gray.opacity(0.1))
                      .frame(width: 100, height: 100)
                      .overlay(Image(place.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 70, height: 70, alignment: .center)
                      )
                      .padding(8)
                   Spacer()
                   VStack(alignment: .leading, spacing: 6) {
                      Text("\(place.name)")
                         .font(.subheadline)
                         .fontWeight(.medium)
                      Text("\(place.time)")
                      Text("\(place.rating)")
                      
                   }
                   .padding(.horizontal)
                }
                .background(.gray.opacity(0.16))
                .cornerRadius(10)
                .padding(.horizontal)
             }
             
          }
       }
}

#Preview {
    NearYouView()
}
