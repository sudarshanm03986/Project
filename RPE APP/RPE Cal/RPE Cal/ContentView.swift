//
//  ContentView.swift
//  RPE Cal
//
//  Created by Sudarshan Malla on 21/06/23.
//

import SwiftUI

struct ContentView: View {
    
    let reps = ["1","2","3","4","5","6","7","8","9","10","11","12"]
    let rpes = ["6.5","7","7.5","8","8.5","9","9.5"]
    
    @State private var selectedReps = Int()
    @State private var selectedRpes = Int()
    @State private var enteredValue: String = ""
    @State private var convertedValue: Double = 0.0
    
    let percentage = [[87.8, 85.0, 82.4, 79.9, 77.4, 75.1, 72.3, 69.4, 66.7, 64.0, 61.3, 58.6],//6.5
                      [89.2, 86.3, 83.7, 81.1, 78.6, 76.2, 73.9, 70.7, 68.0, 65.3, 62.6, 59.9],//7
                      [90.7, 87.8, 85.0, 82.4, 79.9, 77.4, 75.1, 72.3, 69.4, 66.7, 64.0, 61.3],//7.5
                      [92.2, 89.2, 86.3, 83.7, 81.1, 78.6, 76.2, 73.9, 70.7, 68.0, 65.3, 62.6],//8
                      [93.9, 90.7, 87.8, 85.0, 82.4, 79.9, 77.4, 75.1, 72.3, 69.4, 66.7, 64.0],//8.5
                      [95.5, 92.2, 89.2, 86.3, 83.7, 81.1, 78.6, 76.2, 73.9, 70.7, 68.0, 65.3],//9
                      [97.8, 93.9, 90.7, 87.8, 85.0, 82.4, 79.9, 77.4, 75.1, 72.3, 69.4, 66.7]//9.5
                    ]
    
    var body: some View {
        
        
        ZStack {
            //back gound color
            Color(red: 0.0, green: 0.0, blue: 0.0) // black
                .ignoresSafeArea()

            
            VStack {
                //title
                Text("RPE Calculator")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.red)
                    .multilineTextAlignment(.leading)
                
                //lable
                Text("By SUDA")
                    .font(.body)
                    .foregroundColor(Color.white)
                
                 // textfield for RM1
                TextField(/*@START_MENU_TOKEN@*/"Your RM1"/*@END_MENU_TOKEN@*/,text: $enteredValue)
                    .frame(width: 130.0, height: 80.0)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                    .border(Color.red, width: 2)
                    .cornerRadius(6.0)
                    .keyboardType(.decimalPad)
                    .onReceive(NotificationCenter.default.publisher(for: UITextField.textDidChangeNotification))
                    { _ in
                        if let value = Double(enteredValue) {
                            convertedValue = value
                            print("Converted value: \(convertedValue)")
                        } else {
                            print("Invalid input")
                        }
                    }
                
                // picker
                HStack(alignment: .top) {
                    //reps picker
                    Picker(selection: $selectedReps, label: Text("Select the REPS"))
                    {
                        ForEach(0 ..< reps.count, id: \.self) {
                            index in Text(self.reps    [index]).foregroundColor(Color.white).tag(index)
                        }
                    }
                 
                    // rpes picker
                    Picker(selection: $selectedRpes, label: Text("Select the RPES"))
                    {
                        ForEach(0 ..< rpes.count, id: \.self) {
                            index in Text(self.rpes    [index]).foregroundColor(Color.white).tag(index)
                        }
                    }
                }
                .pickerStyle(.wheel)
                
                
                // result
                VStack {
                    let total = String(round((convertedValue*((self.percentage[selectedRpes][selectedReps])/100)) * 100) / 100.0)
                    Text("Weight = \(total)kg")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                    Text("Reps = \(self.reps[selectedReps])")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                    Text("RPE = \(self.rpes[selectedRpes])")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                }
            }
                
        }


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
