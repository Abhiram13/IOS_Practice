//
//  ContentView.swift
//  Test
//
//  Created by Abhiram Nagadi on 27/01/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    private var arrays: [String] = ["one", "two", "three"];
    private var rows: [Int] = [1, 2, 3, 4, 5, 6, 7];
    private var B: Color = .blue;
    private var screenWidth = UIScreen.main.bounds.width;
    private var screenHeight = UIScreen.main.bounds.height;
    
    var body : some View {
        VStack (spacing: 10) {
            ForEach(rows, id: \.self) {
                row in HStack(alignment: .top, spacing: 40) {
                    ForEach(arrays, id: \.self) {
                        array in Text("Hello " + array)
                    }
                }
            }
        }.frame(width: screenWidth, height: screenHeight, alignment: .top)
        .foregroundColor(B)
        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
    }
}
