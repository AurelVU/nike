//
//  HomeView.swift
//  nike
//
//  Created by Владимир Ушаков on 16.12.2023.
//

import SwiftUI

struct HomeProductCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("sneaker_image").resizable().frame(width: 316, height: 316)
            Text("Air Jordan XXXVI").padding(.top, 24)
            Text("US$185")
                .padding(.top, 8)
                .foregroundStyle(Color(hex: 0x8D8D8D))
        }
    }
}

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("What's new")
                        .padding(.leading, 24)
                    Text("The latest arrivals from Nike")
                        .font(.system(size: 28))
                        .padding(.leading, 24)
                        .padding(.trailing, 8)
                        .padding(.top, 4)
                        .foregroundStyle(Color(hex: 0x8D8D8D))
                    ScrollView(.horizontal) {
                        HStack {
                            HomeProductCard().padding(.leading, 24)
                            HomeProductCard().padding(.leading, 2)
                        }
                    }
                    NavigationLink {
                        CatalogView()
                    } label: {
                        Image("nike_girl").resizable().scaledToFill().padding(.top, 8)
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
