//
//  HomeScreenViews.swift
//  shopping-app
//
//  Created by Telles Ivan on 7/28/23.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
       ScrollView(.vertical) {
          VStack(alignment:.leading, spacing: 30) {
             HStack{
                Image(systemName: "line.3.horizontal")
                Spacer()
                Image(systemName: "cart.badge.plus")
             }
             .font(.system(.title2))
             .padding(.horizontal)
             VStack(alignment:.leading){
                Text("Welcome, Ivan.")
                   .font(.system(size: 24))
                RoundedRectangle(cornerRadius: 8)
                   .fill(.gray.opacity(0.2))
                   .overlay {
                      HStack(alignment: .firstTextBaseline, spacing: 6){
                         Image(systemName: "magnifyingglass")
                         Text("Search groceries...")
                            .foregroundStyle(.gray.opacity(1.2))
                         Spacer()
                      }
                      .padding(6)
                   }
                   .frame(height: 60)
                
             }
             .padding(.horizontal)
             TopSellingView()
             NearYouView()
          }
       }
    }
}

#Preview {
   HomeScreenView()
}
