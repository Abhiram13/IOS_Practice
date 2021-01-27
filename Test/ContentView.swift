//
//  ContentView.swift
//  Test
//
//  Created by Abhiram Nagadi on 27/01/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    private let arrays: [String] = ["one", "two", "three"];
    private var B: Color = .blue;
    private var screenWidth = UIScreen.main.bounds.width;
    private var screenHeight = UIScreen.main.bounds.height;
    var body : some View {
        VStack(alignment: .center, spacing: 10) {
            ForEach(arrays, id: \.self) {
                array in Text("Hello " + array)
            }
        }.frame(width: screenWidth, height: screenHeight, alignment: .center)
        .foregroundColor(B)
        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
    }
}
