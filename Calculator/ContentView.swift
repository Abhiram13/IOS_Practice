//
//  ContentView.swift
//  Calculator
//
//  Created by Abhiram Nagadi on 15/05/21.
//

import SwiftUI
import CoreData

func integerRows() -> [Int] {
    return [1, 2, 3, 4, 5, 6, 7];
}

struct ContentView: View {
    private var arrays: [String] = ["one", "two", "three"];
//    private var rows: [Int] = [1, 2, 3, 4, 5, 6, 7];
    private var B: Color = .blue;
    private var screenWidth = UIScreen.main.bounds.width;
    private var screenHeight = UIScreen.main.bounds.height;
    @State var showsAlert = false;
    @State var username: String = ""
        
    var body : some View {
        VStack (spacing: 10) {
            ForEach(integerRows(), id: \.self) {
                row in HStack(alignment: .top, spacing: 40) {
                    ForEach(arrays, id: \.self) {
                        array in Text("Hello " + array)
                    }
                }
            }
            
            TextField("User name (email address)", text: $username)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .border(Color(UIColor.separator))
                Text(username)
                    .foregroundColor(.blue)
                
            Button(action: { self.showsAlert.toggle() }) {
                Text("Show Alert")
            }.alert(isPresented: self.$showsAlert) {
                Alert(title: Text("Hello"))
            }
        }.frame(width: screenWidth, height: screenHeight, alignment: .top)
        .foregroundColor(B)
        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
    }
}

//private let itemFormatter: DateFormatter = {
//    let formatter = DateFormatter()
//    formatter.dateStyle = .short
//    formatter.timeStyle = .medium
//    return formatter
//}()
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//    }
//}
