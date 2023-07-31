//
//  OnBoardingScreenView.swift
//  shopping-app
//
//  Created by Telles Ivan on 7/28/23.
//

import SwiftUI

struct OnBoardingScreenView: View {
    var body: some View {
       NavigationStack{
          VStack(spacing:30) {
             Spacer()
             Image("img")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200,alignment: .center)
             VStack(alignment: .leading, spacing:10){
                Text("Begin your order!")
                   .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                   .font(.system(.headline))
                Text("Enjoy free delivery on thousands of fresh fruits and groceries from July 14 - July 20")
                   .font(.system(.callout))
                Text("Terms & Conditions apply.")
                   .font(.system(.footnote))
                   .foregroundStyle(.blue)
             }
             NavigationLink(destination: HomeScreenView()) {
                RoundedRectangle(cornerRadius: 12)
                   .fill(Color(._5))
                   .frame(height: 60, alignment: .center)
                   .overlay {
                      HStack(alignment: .center){
                         Text("Start Shopping")
                            .font(.system(.headline))
                         Image(systemName: "chevron.right")
                      }
                      .foregroundStyle(.black)
                   }
             }

          }
          .padding(14)
       }
    }
}

#Preview {
    OnBoardingScreenView()
}
