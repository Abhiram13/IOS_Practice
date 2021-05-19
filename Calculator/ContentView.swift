import SwiftUI
import CoreData

public class Links {
    var title: String;
    var component: AnyView;
    
    init(Title: String, Component: AnyView) {
        self.title = Title;
        self.component = Component;
    }
}

struct ContentView: View {
    private var x: [Links] = [Links(Title: "Pecentage Calculator", Component: AnyView(Detail()))]
    
    var body : some View {
        NavigationView {
            VStack (alignment: .leading, spacing: 10) {
//                for link in x {
//                    NavigationLink(destination: Detail()) {
//                        Text("Pecentage Calculator").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                    }
//                }
                
            }
            .foregroundColor(.blue)
        }.navigationTitle("Home Page")
    }
}
