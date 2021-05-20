import Foundation;
import SwiftUI;

public class Calculate {
    var Input: String;
    
    // 1,23,456 -- One lakh Twenty Three thousand Four hundred and Fifty Six
    
    init(input: String) {
        self.Input = input;
    }
    
    private func pluralNums(num: String) -> String {
        switch num {
        case "2":
            return "Twenty";
        case "3":
            return "Thirty";
        case "4":
            return "Fourty";
        case "5":
            return "Fifty";
        case "6":
            return "Sixty";
        case "7":
            return "Seventy";
        case "8":
            return "Eighty";
        case "9":
            return "Ninty";
        default:
            return "One";
        }
    }
    
    private func singularNums(num: String) -> String {
        switch num {
        case "2":
            return "Two";
        case "3":
            return "Three";
        case "4":
            return "Four";
        case "5":
            return "Five";
        case "6":
            return "Six";
        case "7":
            return "Seven";
        case "8":
            return "Eight";
        case "9":
            return "Nine";
        default:
            return "One";
        }
    }
    
    private func Ones() -> Void { }
    
    private func Hundreds(input: String) -> String {
        switch input {
        case "100":
            return "One Hundred";
        default:
            return "ahsgdj";
        }
    }
    
    private func num() -> String {
        switch self.Input.count {
        case 3:
            return "Hundred";
        default:
            return "sadshk";
        }
    }
    
    private func calc() -> Void {
        
    }
}

struct InputForm: View {
    private let screenWidth: CGFloat = UIScreen.main.bounds.width;
    private let screenHeight: CGFloat = UIScreen.main.bounds.height;
    @State private var numberInput: String = "";
    
    var body: some View {
        TextField("Provide Number", text: $numberInput)
            .keyboardType(.namePhonePad)
            .frame(width: screenWidth - 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            .multilineTextAlignment(.center)
    }
}

struct NumberConvertor: View {
    var body: some View {
        VStack(alignment: .leading, spacing: nil) {
            Text("Number Convertor")
                .bold()
                .font(.system(size: 20))
                .foregroundColor(.black)
            
            InputForm();
        }
    }
}
