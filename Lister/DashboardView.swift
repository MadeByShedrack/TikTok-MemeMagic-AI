//
//  DashboardView.swift
//  Lister
//
//  Created by OgdenMorrow on 25/11/2023.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        ZStack {
            Color(red: 245/255, green: 245/255, blue: 249/255)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Dashbaord")
                        .foregroundColor(Color(red: 57/255, green: 57/255, blue: 57/255))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 23))
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                ScrollView {
                    HStack {
                        Text("Overview")
                            .foregroundColor(Color(red: 57/255, green: 57/255, blue: 57/255))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 20))
                            .padding(.leading, 10)
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    } .padding(20)
                    HStack(alignment: .center) {
                        Image("stopwatch")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                        VStack {
                            Text("Worked Hours")
                                .foregroundColor(Color(red: 57/255, green: 57/255, blue: 57/255))
                                .font(.system(size: 22))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("140")
                                .foregroundColor(Color(red: 57/255, green: 57/255, blue: 57/255))
                                .font(.system(size: 19))
                                .multilineTextAlignment(.trailing)
                                .padding(.top, 2)
                                .padding(.leading, 1)
                        }
                        Spacer()
                    }.padding(.all, 15.0)
                    .background(RoundedRectangle(cornerRadius: 22).foregroundColor(.white).frame(width: nil, height: 94, alignment: .center))
                    HStack(alignment: .center) {
                        Image("money")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                        VStack {
                            Text("Billable amount")
                                .foregroundColor(Color(red: 57/255, green: 57/255, blue: 57/255))
                                .font(.system(size: 22))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("140")
                                .foregroundColor(Color(red: 57/255, green: 57/255, blue: 57/255))
                                .font(.system(size: 19))
                                .multilineTextAlignment(.trailing)
                                .padding(.top, 2)
                                .padding(.leading, 1)
                        }
                        Spacer()
                    }.padding(.all, 15.0)
                    .background(RoundedRectangle(cornerRadius: 22).foregroundColor(.white).frame(width: nil, height: 94, alignment: .center))
                    HStack(alignment: .center) {
                        Image("cash")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                        VStack {
                            Text("Billable expenses")
                                .foregroundColor(Color(red: 65/255, green: 65/255, blue: 65/255))
                                .font(.system(size: 22))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("240")
                                .foregroundColor(Color(red: 57/255, green: 57/255, blue: 57/255))
                                .font(.system(size: 19))
                                .multilineTextAlignment(.trailing)
                                .padding(.top, 2)
                                .padding(.leading, 1)
                        }
                        Spacer()
                    }.padding(.all, 15.0)
                    .background(RoundedRectangle(cornerRadius: 22).foregroundColor(.white).frame(width: nil, height: 94, alignment: .center))
                    HStack {
                        Text("Active Timers")
                            .foregroundColor(Color(red: 57/255, green: 57/255, blue: 57/255))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.leading, 10)
                            .font(.system(size: 20))
                        multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
            }
        }
    }
}

