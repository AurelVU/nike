//
//  OnBoardingView.swift
//  nike
//
//  Created by Владимир Ушаков on 20.11.2023.
//

import SwiftUI

struct LinearIndicator: View {
    let width: CGFloat?;
    let height: CGFloat?;
    let percent: CGFloat;
    
    
    var body: some View {
        ZStack(alignment: .leading) {
            GeometryReader { geometry in
                Capsule().foregroundColor(.gray)
                Capsule().frame(width: geometry.size.width * percent).foregroundColor(.white)
            }.frame(width: width, height: height)
        }
    }
}

struct OnBoardingView: View {
    @State private var step = 0
    @State private var navigationTag : String?
    
    private let groupNames: [String] = [
        "Air Max",
        "Baseball",
        "Big & Tall",
        "Cross-Training",
        "Dance",
        "Lacrosse",
        "Maternity",
        "N7",
        "Nike Sportswear"
    ]
    
    private let groupImages: [String] = [
        "onboarding_air_max",
        "onboarding_baseball",
        "onboarding_big_tall",
        "onboarding_cross_training",
        "onboarding_dance",
        "onboarding_lacrosse",
        "onboarding_maternity",
        "onboarding_n7",
        "onboarding_nike_sportswear"
    ]
    
    var body: some View {
        ZStack(alignment: .top) {
            NavigationLink(
                destination: MainView(),
                tag: "main",
                selection: $navigationTag) {
                    MainView()
            }
            
            Color.black.ignoresSafeArea()
            
            if step == 0 {
                ZStack(alignment: .top) {
                    Image("onboarding_background_1").resizable().ignoresSafeArea()
                    VStack {
                        Text("""
                 To personalize your\nexperience and\nconnect you to sport, we've got a few\nquestions for you.
                 """).font(.largeTitle).foregroundStyle(.white)
                        Spacer()
                        Button(action: {
                            withAnimation {
                                step = 1
                            }
                        }, label: {
                            Text("Get Started").foregroundStyle(.black).padding(.horizontal, 39).padding(.vertical, 12)
                        }).buttonStyle(.borderedProminent).buttonBorderShape(.capsule).tint(.white)
                    }.padding(.top, 54)
                }.transition(.opacity)
            }
            
            if step == 1 {
                VStack(alignment: .leading) {
                    Text("""
                    First up, which
                    products do you use
                    the most?
                """)
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    OnBoardingRow(image: "onboarding_mens_image", text: "Mens") {
                        withAnimation {
                            step = 2
                        }
                    }
                    Divider().background(Color(hex: 0x908E8C))
                    OnBoardingRow(image: "onboarding_women_image", text: "Womens") {
                        withAnimation {
                            step = 2
                        }
                    }
                    
                    Spacer()
                    
                    Text("Any others?").font(.system(size: 30)).foregroundStyle(Color(hex: 0x908E8C))
                    OnBoardingRow(image: "onboarding_boys_image", text: "Boys") {
                        withAnimation {
                            step = 2
                        }
                    }
                    Divider().background(Color(hex: 0x908E8C))
                    OnBoardingRow(image: "onboarding_girls_image", text: "Girls") {
                        withAnimation {
                            step = 2
                        }
                    }
                }.padding(.top, 54).padding(.horizontal, 20).transition(.opacity)
            }
            
            if step == 2 {
                ZStack(alignment: .top) {
                    Image("onboarding_background_3").resizable().ignoresSafeArea()
                    VStack() {
                        Text("What’s your shoe size?").font(.largeTitle)
                            .foregroundStyle(.white)
                        Grid(horizontalSpacing: 15, verticalSpacing: 12) {
                            GridRow {
                                GridElement(text: "4")
                                GridElement(text: "4.5")
                                GridElement(text: "5")
                                GridElement(text: "5.5")
                            }
                            GridRow {
                                GridElement(text: "6")
                                GridElement(text: "6.5")
                                GridElement(text: "7")
                                GridElement(text: "7.5")
                            }
                            GridRow {
                                GridElement(text: "8")
                                GridElement(text: "8.5")
                                GridElement(text: "9")
                                GridElement(text: "9.5")
                            }
                            GridRow {
                                GridElement(text: "8")
                                GridElement(text: "8.5")
                                GridElement(text: "9")
                                GridElement(text: "9.5")
                            }
                            GridRow {
                                GridElement(text: "10")
                                GridElement(text: "10.5")
                                GridElement(text: "11", isSelected: true)
                                GridElement(text: "11.5")
                            }
                            GridRow {
                                GridElement(text: "12")
                                GridElement(text: "12.5")
                                GridElement(text: "13")
                                GridElement(text: "13.5")
                            }
                            GridRow {
                                GridElement(text: "14")
                                GridElement(text: "14.5")
                            }
                        }
                        Spacer()
                        Button {
                            withAnimation {
                                step = 3
                            }
                        } label: {
                            Text("Next").foregroundStyle(.black).padding(.vertical, 12).padding(.horizontal, 48)
                        }.buttonStyle(.borderedProminent).buttonBorderShape(.capsule).tint(.white)
                        
                    }.padding(.top, 54).padding(.horizontal, 20).transition(.opacity)
                }
            }
            
            if step == 3 {
                ZStack {
                    Image("onboarding_background_4").resizable().ignoresSafeArea()
                    VStack() {
                        Text("""
                             Stay in the know with notifications about First Access to products, invites to experiences, personalized offers, and order updates.
                             """)
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .padding(.top, 64)
                        .padding(.horizontal, 24)
                        Spacer()
                        Button {
                            withAnimation {
                                step = 4
                            }
                        } label: {
                            Text("Next").foregroundStyle(.black).padding(.vertical, 12).padding(.horizontal, 48)
                        }.buttonStyle(.borderedProminent).buttonBorderShape(.capsule).tint(.white)
                    }
                }.transition(.opacity)
            }
            
            if step == 4 {
                ZStack {
                    Image("onboarding_background_5").resizable().ignoresSafeArea()
                    ScrollView {
                        VStack {
                            ForEach(0..<groupNames.count) { index in
                                let groupName = groupNames[index]
                                let img = groupImages[index]
                                
                                OnBoardingRow(image: img, text: groupName) {
                                    
                                }
                                Divider().background(Color(hex: 0x908E8C))
                                
                            }
                        }
                        .padding(.top, 48)
                        .padding(.horizontal, 32)
                    }
                    VStack {
                        Spacer()
                        Button {
                            navigationTag = "main"
                        } label: {
                            Text("Next").foregroundStyle(.black).padding(.vertical, 12).padding(.horizontal, 48)
                        }.buttonStyle(.borderedProminent).buttonBorderShape(.capsule).tint(.white)
                    }
                }
            }
            
            
            
            
            LinearIndicator(width: 167, height: 4, percent: CGFloat((step + 1)) / 5.0).padding(.top, 30)
        }.navigationBarHidden(true)
    }
}

struct OnBoardingRow: View {
    var image: String
    var text: String
    var callback: () -> Void
    
    var body: some View {
        HStack(alignment: .center) {
            Image(image).resizable().frame(width: 64, height: 64).clipShape(Circle())
            Text(text).font(.system(size: 23)).foregroundStyle(Color(hex: 0x908E8C)).padding(.leading, 21)
            Spacer()
            Circle().stroke(Color(hex: 0x908E8C), lineWidth: 1).frame(width: 28, height: 28)
        }
        .frame(height: 64)
        .padding(.vertical, 16)
        .onTapGesture {
            callback()
        }
    }
}

struct GridElement: View {
    var text: String
    var isSelected: Bool?
    
    init(text: String, isSelected: Bool? = nil) {
        self.text = text
        self.isSelected = isSelected
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5.0)
                .foregroundColor(.white.opacity(isSelected ?? false ? 1.0 : 0.08))
                .aspectRatio(75.0 / 52.0, contentMode: .fit)
            Text(text).foregroundStyle(isSelected ?? false ? .black : .white)
        }
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
