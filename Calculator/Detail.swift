//
//  Detail.swift
//  Calculator
//
//  Created by Abhiram Nagadi on 16/05/21.
//

import SwiftUI;

struct Detail: View {
    private let screenWidth: CGFloat = UIScreen.main.bounds.width;
    private let screenHeight: CGFloat = UIScreen.main.bounds.height;
    
    var body: some View {
        Color.green.overlay(
            VStack(spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/) {
                Text("Percentage Calculator")
                    .bold()
                    .font(.system(size: 20))
                    .frame(alignment: .trailing)
                
                Text("Some Random Text")
                    .font(.system(size: 15))
                    .frame(alignment: .leading)
                
                Text("Another Random Text")
                    .font(.system(size: 15))
                    .frame(alignment: .center)
            }
        ).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
