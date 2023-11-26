//
//  ContentView.swift
//  Lister
//
//  Created by OgdenMorrow on 25/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        ZStack {
            Color
                .black
                .ignoresSafeArea(.all)
            VStack {
                Image("tik")
                    .resizable()
                    .frame(width: 100, height: 100)
                Text("TikTok Meme Magic AI")
                    .font(.system(.title, design: .rounded))
                    .foregroundColor(.white)
                    .fontWeight(.black)
                HStack {
                    SubscriptionView(title: "Basic", price: "9", color: .black, bgColor: .white)
                    SubscriptionView(title: "Gold", price: "49", color: .black, bgColor: .yellow)
                }
                SubscriptionView(title: "Titanium", price: "99", color: .white, bgColor: .gray)
                SubscriptionButton(text: "Subscribe", color: .blue, topPadding: 40, action: {
                    print("Subsription processed")
                })
                SubscriptionButton(text: "Free trial", color: .red, topPadding: 10, action: {
                    print("Free trials in progress")
                })
            }
        }
    }
}


struct SubscriptionView: View {
    
    var title: String
    var price: String
    var color: Color
    var bgColor: Color
    var body: some View {
        VStack {
            Text(title)
                .font(.system(.title, design: .rounded))
                .foregroundColor(color)
                .fontWeight(.black)
            Text("$\(price)")
                .font(.system(.title, design: .rounded))
                .foregroundColor(color)
            Text("per month")
                .font(.headline)
                .foregroundColor(color)
        }
        .frame(maxWidth: .infinity, minHeight: 150)
        .padding(30)
        .background(bgColor)
        .cornerRadius(20)
    }
}

struct SubscriptionButton: View {
    var text: String
    var color: Color
    var topPadding: CGFloat
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .padding()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: 75)
                .background(color)
                .cornerRadius(30)
                .shadow(radius: 40)
        }
        .padding(.top, topPadding)
        .padding(.horizontal)
    }
}
