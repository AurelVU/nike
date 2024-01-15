//
//  ShopView.swift
//  nike
//
//  Created by Владимир Ушаков on 16.12.2023.
//

import SwiftUI

struct NavItem: View {
    var name: String
    var active: Bool = false
    
    var body: some View {
        VStack {
            Text(name).padding(.bottom, 19)
                .foregroundStyle(active ? .black : Color(hex: 0x717171))
                .overlay {
                    if (active) {
                        VStack {
                            Spacer()
                            Rectangle().frame(height: 3.0)
                        }
                    }
                }
        }
    }
}

struct ShopView: View {
    var body: some View {
        NavigationView(content: {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Shop").font(.largeTitle).padding(.horizontal, 18)
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            NavItem(name: "Men", active: true).padding(.leading, 18)
                            NavItem(name: "Women").padding(.leading, 18)
                            NavItem(name: "Kids").padding(.leading, 18)
                        }
                        Divider().frame(height: 1.0)
                    }.padding(.top, 32)
                    Text("Must-Haves, Best Sellers & More")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.leading, 18)
                        .padding(.top, 26)
                    ScrollView(.horizontal) {
                        HStack(spacing: 8) {
                            VStack(alignment: .leading, spacing: 18) {
                                Image("shop_1").resizable().scaledToFit().frame(width: 220, height: 220)
                                Text("Best Sellers").fontWeight(.semibold)
                            }.padding(.leading, 18)
                            VStack(alignment: .leading, spacing: 18) {
                                Image("shop_1").resizable().scaledToFit().frame(width: 220, height: 220)
                                Text("Featured in Nike Air").fontWeight(.semibold)
                            }
                        }
                    }
                    ZStack(alignment: .leading) {
                        Image("shop_3").resizable().scaledToFit()
                        Text("New & Featured")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .padding(.leading, 20)
                    }
                    ZStack(alignment: .leading) {
                        Image("shop_4").resizable().scaledToFit()
                        Text("Shoes")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .padding(.leading, 20)
                    }
                }
            }.navigationBarItems(trailing: HStack {
                Text("\(Image(systemName: "magnifyingglass"))")
            })
        })
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
