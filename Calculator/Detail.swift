//
//  Detail.swift
//  Calculator
//
//  Created by Abhiram Nagadi on 16/05/21.
//

import SwiftUI;

func CalculatePercentage(total: String, percentage: String) -> Double {
    let Total: Int = Int(total) ?? 0
    let Percentage: Int = Int(percentage) ?? 0
    let x = Double(Total)/100
    let val = x * Double(Percentage)
    
    return val;
}

func CalculateValue(total: String, value: String) -> Double {
    let Total: Int = Int(total) ?? 0
    let Value: Int = Int(value) ?? 0
    
    return Double(Value)/Double(Total) * 100;
}

struct Detail: View {
    private let screenWidth: CGFloat = UIScreen.main.bounds.width;
    private let screenHeight: CGFloat = UIScreen.main.bounds.height;
    @State private var fNum: String = "";
    @State private var lNum: String = "";
    @State private var Value: String = "";
    @State private var TotalAmount: String = "";
    @State private var showsAlert = false;
    @State private var showSecondAlert = false;
    
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
                    
                    Group {
                        Text("Find Value")
                            .bold()
                            .font(.system(size: 20))
                        
                        Text("Find how much value the percentage presents")
                            .font(.system(size: 15))
                        
                        VStack(alignment: .center, spacing: 10) {
                            TextField("Total Amount", text: $fNum)
                                .keyboardType(.namePhonePad)
                                .frame(width: screenWidth - 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                                .multilineTextAlignment(.center)
                            
                            TextField("Percentage %", text: $lNum)
                                .keyboardType(.namePhonePad)
                                .frame(width: screenWidth - 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                                .multilineTextAlignment(.center)
                            
                            Button(action: { self.showsAlert.toggle() }) {
                                Text("Calculate")
                            }
                            .alert(isPresented: self.$showsAlert) {
                                Alert(title: Text("\(CalculatePercentage(total: fNum, percentage: lNum))"))
                            }
                            
                        }
                        .frame(width: screenWidth - 45, height: 160, alignment: .top)
                    }
                    
                    Group {
                        Text("Find Percentage")
                            .bold()
                            .font(.system(size: 20))
                        
                        Text("Find out how much percentage the value covers")
                            .font(.system(size: 15))
                        
                        VStack(alignment: .center, spacing: 10) {
                            TextField("Value", text: $Value)
                                .keyboardType(.namePhonePad)
                                .frame(width: screenWidth - 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                                .multilineTextAlignment(.center)
                            
                            TextField("Total Amount", text: $TotalAmount)
                                .keyboardType(.namePhonePad)
                                .frame(width: screenWidth - 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                                .multilineTextAlignment(.center)
                            
                            Button(action: { self.showSecondAlert.toggle() }) {
                                Text("Calculate")
                            }
                            .alert(isPresented: self.$showSecondAlert) {
                                Alert(title: Text("\(CalculateValue(total: TotalAmount, value: Value))"))
                            }
                            
                        }
                        .frame(width: screenWidth - 45, height: 100, alignment: .center)
                    }
                    
                }
                .frame(width: screenWidth - 35, height: screenHeight - 40, alignment: .topLeading)
                .border(Color.green, width: 1)
            }
            .frame(width: screenWidth, height: screenHeight)
            .border(Color.black, width: 1)
        )
    }
}
