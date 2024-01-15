//
//  ContentView.swift
//  nike
//
//  Created by Владимир Ушаков on 19.11.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var sheetShown = false
    @State private var tagSelection: String? = nil
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .leading) {
                NavigationLink(destination: OnBoardingView(), tag: "onboarding", selection: $tagSelection) { OnBoardingView() }
                
                Color.black.ignoresSafeArea()
                VStack {
                    Spacer()
                    Image("model")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .offset(y: 10)
                        .offset(x: 2)
                }.ignoresSafeArea()
                LinearGradient(colors: [Color.black, Color.black.opacity(0.0)], startPoint: .bottom, endPoint: .center).ignoresSafeArea()
                VStack(alignment: .leading) {
                    Spacer()
                    Text("""
Nike App
Bringing Nike Members the best products, inspiration and stories in sport.
""")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.white)
                    HStack {
                        Button {
                            sheetShown = true
                        } label: {
                            Text("Join us")
                                .foregroundStyle(Color.black)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 8)
                        }.buttonStyle(.borderedProminent)
                            .tint(Color.white)
                            .clipShape(.capsule)
                        Button {
                            sheetShown = true
                        } label: {
                            Text("Sign in")
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 8)
                        }.buttonStyle(.borderedProminent)
                            .tint(Color.black.opacity(0.0))
                            .clipShape(.capsule)
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.white, lineWidth: 1)
                            )
                    }.padding(.bottom, 24)
                }
                .padding()
                .sheet(isPresented: $sheetShown, onDismiss: {
                    tagSelection = "onboarding"
                }) {
                    NavigationStack {
                        AuthView()
                    }
                    .presentationDetents([.large])
                }
            }.background(Color.black)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
