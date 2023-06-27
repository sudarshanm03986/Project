//
//  SetUpView.swift
//  Gym Buddy
//
//  Created by Sudarshan Malla on 27/06/23.
//

import SwiftUI

struct SetUpView: View {
    var squat: String = "195.00"
    var bench: String = "112.50"
    var dead: String = "230.00"
    
    var body: some View {
        VStack{
            Spacer()
            Spacer()
            Text("Update Your RM1")
                .font(.largeTitle)
            Spacer()
            HStack{
                Spacer()
                Spacer()
                Text("Squat")
                    .font(.title)
                Spacer()
                TextField(squat, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .frame(width: 90.0, height: 50.0)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                Spacer()
                Spacer()
                Spacer()
             
                    

                    
            }
            HStack{
                Spacer()
                Spacer()
                Text("Bench")
                    .font(.title)
                Spacer()
                TextField(bench, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .frame(width: 90.0, height: 50.0)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                Spacer()
                Spacer()
                Spacer()
            }
            HStack{
                Spacer()
                Spacer()
                Text("Deads")
                    .font(.title)
                Spacer()
                ZStack{
                    Rectangle()
                        .frame(width: 90.0, height: 50.0)
                    TextField(dead, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .frame(width: 90.0, height: 50.0)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                        .foregroundColor(Color.white)
                    
                }
                Spacer()
                Spacer()
                Spacer()
            }
            
            Spacer()
            Button {
                
            } label: {
                ZStack{
                    RoundedRectangle(cornerRadius:4)
                        .frame(width: 90.0, height: 50.0)
                        .shadow(radius: 4)
                   
                    Text("Update")
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        
                }
                
            }

            Spacer()
        }
        

    }
}

struct SetUpView_Previews: PreviewProvider {
    static var previews: some View {
        SetUpView()
    }
}
