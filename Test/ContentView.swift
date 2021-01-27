//
//  ContentView.swift
//  Test
//
//  Created by Abhiram Nagadi on 27/01/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    let arrays: [String] = ["one", "two", "three"];
    var body : some View {
        VStack(alignment: .center, spacing: 10) {
            ForEach(arrays, id: \.self) {
                array in Text("Hello " + array)
            }
        }.frame(width: 200, height: 500, alignment: .center)
        .foregroundColor(.blue)
        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
    }
}
