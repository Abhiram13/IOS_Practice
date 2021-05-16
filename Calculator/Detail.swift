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
        Color.white.overlay(
            VStack(alignment: .leading, spacing: 10) {
                VStack (alignment: .leading, spacing: nil) {
                    Text("Percentage Calculator")
                        .bold()
                        .font(.system(size: 25))
                    
                    Text("Some Random Text")
                        .font(.system(size: 15))
                    
                    Text("Another Random Text")
                        .font(.system(size: 15))
                        .frame(alignment: .center)
                }.frame(width: screenWidth - 35, height: screenHeight - 80, alignment: .topLeading)
//                .border(Color.green, width: 1)
            }.frame(width: screenWidth, height: screenHeight)
//            .border(Color.black, width: 1)
        )
    }
}
