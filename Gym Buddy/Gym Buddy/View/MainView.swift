//
//  MainView.swift
//  Gym Buddy
//
//  Created by Sudarshan Malla on 27/06/23.
//

import SwiftUI

struct MainView: View {
    
    
    let percentage = [[87.8, 85.0, 82.4, 79.9, 77.4, 75.1, 72.3, 69.4, 66.7, 64.0, 61.3, 58.6],//6.5
                      [89.2, 86.3, 83.7, 81.1, 78.6, 76.2, 73.9, 70.7, 68.0, 65.3, 62.6, 59.9],//7
                      [90.7, 87.8, 85.0, 82.4, 79.9, 77.4, 75.1, 72.3, 69.4, 66.7, 64.0, 61.3],//7.5
                      [92.2, 89.2, 86.3, 83.7, 81.1, 78.6, 76.2, 73.9, 70.7, 68.0, 65.3, 62.6],//8
                      [93.9, 90.7, 87.8, 85.0, 82.4, 79.9, 77.4, 75.1, 72.3, 69.4, 66.7, 64.0],//8.5
                      [95.5, 92.2, 89.2, 86.3, 83.7, 81.1, 78.6, 76.2, 73.9, 70.7, 68.0, 65.3],//9
                      [97.8, 93.9, 90.7, 87.8, 85.0, 82.4, 79.9, 77.4, 75.1, 72.3, 69.4, 66.7]//9.5
                    ]
    let reps = ["1","2","3","4","5","6","7","8","9","10","11","12"]
    let rpes = ["6.5","7","7.5","8","8.5","9","9.5"]
    
    @State private var selectedReps = Int()
    @State private var selectedRpes = Int()
    @State private var selected = "S"
    
    
    
    
    var body: some View {
        
        //main body

            //            Color(red: 1, green: 0.7, blue: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
        ZStack{
            
            VStack{
                
               
                
                
                Spacer()
                
                // main title
                Text("GYM BUDDY")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                
                
                
                Text("\(calculate()) KG")
                    .font(.title)
                    .padding()
                
                
                
                
                
                // picker
                HStack() {
                    //reps pickerz
                    Spacer()
                    ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: 150.0, height: 200.0)
                            .foregroundColor(Color.white)
                        Picker(selection: $selectedReps, label: Text("REPS"))
                        {
                            ForEach(0 ..< reps.count, id: \.self) {
                                index in Text(self.reps    [index])
                                    .foregroundColor(Color.black).tag(index)
                            }
                        }
                        .frame(width: 130.0)
                        Text("REP")
                            .padding(.leading, 70.0)
                        
                    }
                    
                    Spacer()
                    Spacer()
                    ZStack{
                        // rpes picker
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: 150.0, height: 200.0)
                            .foregroundColor(Color.white)
                        
                        Picker(selection: $selectedRpes, label: Text("RPES"))
                        {
                            ForEach(0 ..< rpes.count, id: \.self) {
                                index in Text(self.rpes    [index])
                                    .foregroundColor(Color.black).tag(index)
                            }
                        }
                        .frame(width: 130.0)
                        
                        Text("RPE")
                            .padding(.leading, 70.0)
                        
                    }
                    Spacer()
                    
                }
                .pickerStyle(.wheel)
                .padding(.horizontal)
                .shadow(radius: 5)
                
                
                //button
                HStack{
                    Spacer()
                    Button {
                        selected = "S"
                        
                        
                    } label: {
                        ZStack {
                            
                            
                            if (selected == "S") {
                                Circle()
                                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, alignment: .centerFirstTextBaseline)
                                    .foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 1.0))
                                    .shadow(radius: 8)
                                
                            }
                            else {
                                Circle()
                                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, alignment: .centerFirstTextBaseline)
                                    .foregroundColor(Color(red: 1, green: 0.7, blue: 0.5, opacity: 1.0))
                                    .shadow(radius: 8)
                                
                            }
                            
                            
                            Text("Squats")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.black)
                        }
                        
                    }
                    
                    Spacer()
                    
                    Button {
                        selected = "B"
                        
                        
                    } label: {
                        ZStack {
                            
                            if (selected == "B") {
                                Circle()
                                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, alignment: .centerFirstTextBaseline)
                                    .foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 1.0))
                                    .shadow(radius: 8)
                                
                            }
                            else {
                                Circle()
                                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, alignment: .centerFirstTextBaseline)
                                    .foregroundColor(Color(red: 1, green: 0.7, blue: 0.5, opacity: 1.0))
                                    .shadow(radius: 8)
                                
                            }
                            Text("Bench")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.black)
                        }
                        
                    }
                    Spacer()
                    
                    Button {
                        selected = "D"
                        
                        
                    } label: {
                        ZStack {
                            
                            if (selected == "D") {
                                Circle()
                                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, alignment: .centerFirstTextBaseline)
                                    .foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 1.0))
                                    .shadow(radius: 8)
                                
                            }
                            else {
                                Circle()
                                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, alignment: .centerFirstTextBaseline)
                                    .foregroundColor(Color(red: 1, green: 0.7, blue: 0.5, opacity: 1.0))
                                    .shadow(radius: 8)
                                
                            }
                            Text("Deads")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.black)
                        }
                        
                    }
                    Spacer()
                }
                .padding()
                Spacer()
                
                
                
            }
            .padding()
            
            
        }
            .ignoresSafeArea()
            
        
       
        
    }
    
    func calculate()-> String {
        
        return "0.0"
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
