import SwiftUI
import CoreData

func integerRows() -> [Int] {
    return [1, 2, 3, 4, 5, 6, 7];
}

func add(fNum: String, lNum: String) -> Int {
    let firstNum: Int = Int(fNum) ?? 0;
    let lastNum: Int = Int(lNum) ?? 0;
    
    return firstNum + lastNum;
}

struct ContentView: View {
    private var arrays: [String] = ["one", "two", "three"];
    private var B: Color = .blue;
    private let screenWidth: CGFloat = UIScreen.main.bounds.width;
    private let screenHeight: CGFloat = UIScreen.main.bounds.height;
    @State private var showsAlert: Bool = false;
    @State private var result: String = "";
    @State private var fNum: String = "";
    @State private var lNum: String = "";
    @State private var i: Int = 0;

    var body : some View {
        NavigationView {
            VStack (spacing: 10) {

                TextField("First Number", text: $fNum)
                    .keyboardType(.namePhonePad)
                    .frame(width: screenWidth - 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                
                TextField("Last Number", text: $lNum)
                    .keyboardType(.namePhonePad)
                    .frame(width: screenWidth - 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                
                Text(String(i)).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)

                Button(action: {
                    i = add(fNum: fNum, lNum: lNum)
                }) { Text("Add Sum") }
                
                NavigationLink(destination: Detail()) {
                    Text("Click Me to Navigate").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                
            }
            .foregroundColor(B)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
        }.navigationTitle("Home Page")
    }
}
