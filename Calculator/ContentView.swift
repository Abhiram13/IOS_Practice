import SwiftUI
import CoreData

struct Links {
    var title: String;
    var component: AnyView;
    
    init(Title: String, Component: AnyView) {
        self.title = Title;
        self.component = Component;
    }
}

struct ContentView: View {
    let links: [Links] = [
            Links(Title: "Pecentage Calculator", Component: AnyView(Detail())),
            Links(Title: "Number Convertor", Component: AnyView(NumberConvertor()))
        ];
    
    var body : some View {
        NavigationView {
            VStack (alignment: .leading, spacing: 10) {
                ForEach(0..<links.count) { index in
                    NavigationLink(destination: links[index].component) {
                        Text(links[index].title).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                }
            }
            .foregroundColor(.blue)
        }.navigationTitle("Home Page")
    }
}
