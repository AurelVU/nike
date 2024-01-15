//
//  CatalogView.swift
//  nike
//
//  Created by Владимир Ушаков on 22.12.2023.
//

import SwiftUI

struct CatalogProductCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("product_image_1")
                .resizable()
                .scaledToFill()
                .aspectRatio(187 / 185, contentMode: .fill)
            VStack(alignment: .leading) {
                Text("Sold Out").foregroundStyle(Color(hex: 0xEF7952))
                Text("Nike Elite Pro")
                Text("Basketball Backpack (32L)").foregroundStyle(Color(hex: 0x949494))
                Text("3 Colours").foregroundStyle(Color(hex: 0x949494))
                Text("US$85")
            }.padding(.all, 14)
        }.overlay(alignment: .topTrailing) {
            Image("like_button")
                .resizable()
                .frame(width: 28, height: 28)
                .padding(.all, 10)
        }
    }
}

struct CatalogView: View {
    var body: some View {
        VStack(spacing: 0) {
            Divider()
            ScrollView(.horizontal) {
                HStack(spacing: 24) {
                    NavItem(name: "Sicks")
                    NavItem(name: "Sicks")
                    NavItem(name: "Accessories & Equipment", active: true)
                }
                .padding(.top, 16)
                .padding(.leading, 16)
            }
            ScrollView {
                Grid {
                    GridRow {
                        CatalogProductCard()
                        CatalogProductCard()
                    }
                    GridRow {
                        CatalogProductCard()
                        CatalogProductCard()
                    }
                }
            }
        }
        .navigationTitle("Best Sellers")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: HStack {
            Image("edit_button").padding(.horizontal, 8)
            Image("search_button").padding(.horizontal, 8)
        })
    }
}

//#Preview {
struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}
//}
