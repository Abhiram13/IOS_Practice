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
        VStack {
            ForEach(arrays, id: \.self) { array in
                Text("Hello " + array)
            }
        }.background(Color.red)
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
