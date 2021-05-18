import SwiftUI;

func CalculateValueFromPercentage(total: String, percentage: String) -> Double {
    let Total: Int = Int(total) ?? 0
    let Percentage: Int = Int(percentage) ?? 0
    let x = Double(Total)/100
    let val = x * Double(Percentage)
    
    return val;
}

func CalculatePercentageFromValue(total: String, value: String) -> Double {
    let Total: Int = Int(total) ?? 0
    let Value: Int = Int(value) ?? 0
    let percentage: Double = Double(Value)/Double(Total);
    
    return percentage * 100;
}

struct PercentageToValueView: View {
    let fNum: Binding<String>;
    let lNum: Binding<String>;
    private let screenWidth: CGFloat = UIScreen.main.bounds.width;
    private let screenHeight: CGFloat = UIScreen.main.bounds.height;    
    @Binding var showsAlert: Bool;
    
    var body: some View {
        VStack(spacing: nil) {
            Text("Find Value")
                .bold()
                .font(.system(size: 20))
                .frame(width: screenWidth - 50, height: 25, alignment: .leading)
            
            Text("Find how much value the percentage presents")
                .font(.system(size: 15))
                .frame(width: screenWidth - 50, height: 25, alignment: .leading)
            
            TextField("Total Amount", text: fNum)
                .keyboardType(.namePhonePad)
                .frame(width: screenWidth - 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)

            TextField("Percentage %", text: lNum)
                .keyboardType(.namePhonePad)
                .frame(width: screenWidth - 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
            
            Button(action: { self.showsAlert.toggle() }) {
                Text("Calculate")
                    .foregroundColor(.white)
                    .frame(width: 100, height: 35)
            }
            .background(Color.blue)
            .cornerRadius(8.0)
            .alert(isPresented: $showsAlert) {
                Alert(title: Text("\(CalculateValueFromPercentage(total: fNum.wrappedValue, percentage: lNum.wrappedValue))"))
            }
        }
        .frame(minHeight: 260)
    }
}

struct ValueToPercentageFormView: View {
    let Value: Binding<String>;
    let TotalAmount: Binding<String>;
    private let screenWidth: CGFloat = UIScreen.main.bounds.width;
    private let screenHeight: CGFloat = UIScreen.main.bounds.height;
    @Binding var showsAlert: Bool;
    
    var body: some View {
        VStack(spacing: nil) {
            Text("Find Percentage")
                .bold()
                .font(.system(size: 20))
                .frame(width: screenWidth - 50, height: 25, alignment: .leading)
            
            Text("Find out how much percentage the value covers")
                .font(.system(size: 15))
                .frame(width: screenWidth - 50, height: 25, alignment: .leading)
            
            TextField("Value", text: Value)
                .keyboardType(.namePhonePad)
                .frame(width: screenWidth - 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)

            TextField("Total Amount", text: TotalAmount)
                .keyboardType(.namePhonePad)
                .frame(width: screenWidth - 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
            
            Button(action: { self.showsAlert.toggle() }) {
                Text("Calculate")
                    .foregroundColor(.white)
                    .frame(width: 100, height: 35)
            }
            .background(Color.blue)
            .cornerRadius(8.0)
            .alert(isPresented: $showsAlert) {
                Alert(title: Text("\(CalculatePercentageFromValue(total: TotalAmount.wrappedValue, value: Value.wrappedValue))%"))
            }
        }
    }
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
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: nil) {
                Text("Percentage Calculator")
                    .bold()
                    .frame(minHeight: 60)
                    .font(.system(size: 25))
                
                PercentageToValueView(fNum: $fNum, lNum: $lNum, showsAlert: $showsAlert)
                ValueToPercentageFormView(Value: $Value, TotalAmount: $TotalAmount, showsAlert: $showSecondAlert)
                
            }
        }
        .frame(height: screenHeight)
        .padding(.top, 120)
        .ignoresSafeArea(.keyboard)
    }
}
