//
//  DetailsView.swift
//  shopping-app
//
//  Created by Telles Ivan on 7/30/23.
//

import SwiftUI

struct RoundedCornerShape: Shape {
   let corners: UIRectCorner
   let radius: CGFloat
   
   func path(in rect: CGRect) -> Path {
      let path = UIBezierPath(roundedRect: rect,byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius) )
      return Path(path.cgPath)
   }
}

struct DetailsView: View {
   @State var fruitLabel: FruitTitle
   @State var viewMore: Bool = false
   
   func toggleVieMore() {viewMore.toggle()}
   
   
    var body: some View {
       VStack(alignment: .leading, spacing: 20) {
			Image("bg")
             .resizable()
             .edgesIgnoringSafeArea(.top)
             .clipShape(RoundedCornerShape.init(corners: [.bottomLeft, .bottomRight], radius: 50))
             .frame(height: .infinity, alignment: .top)
             .overlay {
                Image(fruitLabel.rawValue)
                   .resizable()
                   .frame(width: 80, height:80, alignment: .center)
             }
          Spacer()
          VStack(alignment: .leading){
             VStack(alignment: .leading, spacing: 8){
                Text(fruitLabel.rawValue)
                   .font(.title)
                   .fontWeight(.semibold)
                   .textCase(.uppercase)
                Text("Each (220g - 980g)")
                   .font(.caption)
                   .fontWeight(.semibold)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                   .font(.footnote)
                   .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                   .lineLimit(viewMore ? .max : 4)
                  
                Button {
                   toggleVieMore()
                } label: {
                   Text(viewMore ? "View Less" : "View More")
                }
         
             }
             .animation(.easeInOut(duration: 0.5), value: viewMore)
             Spacer()
             VStack(alignment: .leading, spacing: 8){
                
                Button {
                   print("\(fruitLabel.rawValue) was added to the cart")
                } label: {
                   RoundedRectangle(cornerRadius: 15)
                      .frame(height: 60)
                      .foregroundStyle(.gray.opacity(0.2))
                      .overlay {
                         Text("Add to cart")
                            .foregroundStyle(.black)
                            .fontWeight(.medium)
                      }
                      
                }
             }
           
          }
          .padding(.horizontal)
       }
    }
}

#Preview {
   DetailsView(fruitLabel: .blackberry)
}
