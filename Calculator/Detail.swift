import SwiftUI;

func CalculateValueFromPercentage(total: String, percentage: String) -> Double {
    let Total: Int = Int(total) ?? 0
    let Percentage: Int = Int(percentage) ?? 0
    let x = Double(Total)/100
    let val = x * Double(Percentage)
    
    return val;
}

func CalculatePercentageFromValue(total: String, value: String) -> Float {
    let Total: Int = Int(total) ?? 0
    let Value: Int = Int(value) ?? 0
    let percentage: Float = Float(Value)/Float(Total);
    
    return percentage * 100;
}

struct Buton<AlertType>: View {
    let ButtonName: String;
    let val: AlertType;
    @Binding var showsAlert: Bool;
    
    init(ButtonName: String, val: AlertType, showsAlert: Binding<Bool>) {
        self.ButtonName = ButtonName;
        self.val = val;
        self._showsAlert = showsAlert;
    }
    
    var body: some View {
        Button(action: { self.showsAlert.toggle() }) {
            Text(ButtonName)
                .foregroundColor(.white)
                .frame(width: 100, height: 35)
        }
        .background(Color.blue)
        .cornerRadius(8.0)
        .alert(isPresented: $showsAlert) {
            Alert(title: Text("\(self.val)" as String))
        }
    }
}

struct PercentageToValueView: View {
    @State private var showsAlert: Bool = false;
    @State private var Total: String = "";
    @State private var Percentage: String = "";
    var screenWidth, screenHeight: CGFloat;
    
    init(Width: CGFloat, Height: CGFloat) {
        self.screenWidth = Width;
        self.screenHeight = Height;
    }
    
    var body: some View {
        VStack(spacing: nil) {
            Text("Find Value")
                .bold()
                .font(.system(size: 20))
                .foregroundColor(.black)
                .frame(width: screenWidth - 50, height: 25, alignment: .leading)
            
            Text("Find how much value the percentage presents")
                .font(.system(size: 15))
                .foregroundColor(.black)
                .frame(width: screenWidth - 50, height: 25, alignment: .leading)
            
            TextField("Total Amount", text: $Total)
                .keyboardType(.namePhonePad)
                .frame(width: screenWidth - 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)

            TextField("Percentage %", text: $Percentage)
                .keyboardType(.namePhonePad)
                .frame(width: screenWidth - 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
            
            Buton<Double>(
                ButtonName: "Calculate",
                val: CalculateValueFromPercentage(total: $Total.wrappedValue, percentage: $Percentage.wrappedValue),
                showsAlert: $showsAlert
            )
        }
        .frame(minHeight: 260)
    }
}

struct ValueToPercentageFormView: View {
    @State private var showsAlert: Bool = false;
    @State private var Value: String = "";
    @State private var TotalAmount: String = "";
    var screenWidth, screenHeight: CGFloat;
    
    init(Width: CGFloat, Height: CGFloat) {
        self.screenWidth = Width;
        self.screenHeight = Height;
    }
    
    var body: some View {
        VStack(spacing: nil) {
            Text("Find Percentage")
                .bold()
                .foregroundColor(.black)
                .font(.system(size: 20))
                .frame(width: screenWidth - 50, height: 25, alignment: .leading)
            
            Text("Find out how much percentage the value covers")
                .font(.system(size: 15))
                .foregroundColor(.black)
                .frame(width: screenWidth - 50, height: 25, alignment: .leading)
            
            TextField("Value", text: $Value)
                .keyboardType(.namePhonePad)
                .frame(width: screenWidth - 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)

            TextField("Total Amount", text: $TotalAmount)
                .keyboardType(.asciiCapableNumberPad)
                .frame(width: screenWidth - 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
            
            Buton<String>(
                ButtonName: "Calculate",
                val: "\(CalculatePercentageFromValue(total: $TotalAmount.wrappedValue, value: $Value.wrappedValue))%",
                showsAlert: $showsAlert
            )
        }
    }
}

struct PercentageCalculator: View {
    var width, height: CGFloat;
    
    init(Width: CGFloat, Height: CGFloat) {
        self.width = Width;
        self.height = Height;
    }
    
    var body: some View {
        PercentageToValueView(Width: width, Height: height);
        ValueToPercentageFormView(Width: width, Height: height);
    }
}

struct Detail: View {
    private let screenWidth: CGFloat = UIScreen.main.bounds.width;
    private let screenHeight: CGFloat = UIScreen.main.bounds.height;
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: nil) {
                Text("Percentage Calculator")
                    .bold()
                    .frame(minHeight: 60)
                    .foregroundColor(.black)
                    .font(.system(size: 25))
                
                PercentageCalculator(Width: screenWidth, Height: screenHeight);
            }
        }
        .frame(height: screenHeight)
        .padding(.top, 120)
        .ignoresSafeArea(.keyboard)
    }
}
