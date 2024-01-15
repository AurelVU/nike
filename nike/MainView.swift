//
//  MainView.swift
//  nike
//
//  Created by Владимир Ушаков on 20.11.2023.
//

import SwiftUI


struct MainView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView().tabItem {
                Label (
                title: {
                    Text("Home")
                }, icon: {
                    Image(selectedTab == 0 ? "home_icon_active" : "home_icon")
                })
            }.tag(0)
            ShopView().tabItem {
                Label (
                title: {
                    Text("Home").foregroundStyle(.black)
                }, icon: {
                    Image(selectedTab == 1 ? "search_icon_active" : "search_icon")
                })
            }.tag(1)
            Text("Hi 1!").tabItem {
                Label (
                title: {
                    Text("Home")
                }, icon: {
                    Image("favorites_icon")
                })
            }.tag(2)
            Text("Hi 1!").tabItem {
                Label (
                title: {
                    Text("Home")
                }, icon: {
                    Image("basket_icon")
                })
            }.tag(3)
            Text("Hi 1!").tabItem {
                Label (
                title: {
                    Text("Home")
                }, icon: {
                    Image("profile_icon")
                })
            }.tag(4)
            }.navigationBarHidden(true)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
