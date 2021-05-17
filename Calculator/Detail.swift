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
    @State private var fNum: String = "";
    
    // (Total)/100 * (percentage) --- to find how much value the percentage presents ------ Find Value
    // (Value)/(Total) * 100 --- to find out how much percentage the value covers ------ Find Percentage
    
    var body: some View {
        Color.white.overlay(
            VStack(alignment: .leading, spacing: 10) {
                VStack (alignment: .leading, spacing: nil) {
                    Text("Percentage Calculator")
                        .bold()
                        .frame(minHeight: 60)
                        .font(.system(size: 25))
                    
                    Text("Find Value")
                        .bold()
                        .font(.system(size: 20))
                    
                    Text("Find how much value the percentage presents")
                        .font(.system(size: 17))
                    
                    VStack(alignment: .center, spacing: 10) {
                        TextField("Total Amount", text: $fNum)
                            .keyboardType(.namePhonePad)
                            .frame(width: screenWidth - 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                        
                        TextField("Percentage %", text: $fNum)
                            .keyboardType(.namePhonePad)
                            .frame(width: screenWidth - 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                        
                    }.frame(width: screenWidth - 45, height: screenHeight - 50, alignment: .top)
                }.frame(width: screenWidth - 35, height: screenHeight - 80, alignment: .topLeading)
                .border(Color.green, width: 1)
            }.frame(width: screenWidth, height: screenHeight)
            .border(Color.black, width: 1)
        )
    }
}
