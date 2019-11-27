//
//  ContentView.swift
//  Test2
//
//  Created by MA DAN on 2019/11/26.
//  Copyright © 2019 MA DAN. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List{
                Image("p1")
                    .resizable()
                    .scaledToFill()
                    .frame(height:200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                VStack {
                    LabelTextField(label: "NAME", placeHolder: "Fill in the restaurant name").padding(.top,20)
                    LabelTextField(label: "TYPE", placeHolder: "Fill in the restaurant type")
                    LabelTextField(label: "ADDRESS", placeHolder: "Fill in the restaurant address")
                    LabelTextField(label: "PHONE", placeHolder: "Fill in the restaurant phone")
                    LabelTextField(label: "DESCRIPTION", placeHolder: "Fill in the restaurant description")
                    RoundedButton(text: "Save")
                }.listRowInsets(EdgeInsets())
            }
            .navigationBarTitle(Text("New Restaurant"))
            .navigationBarItems(trailing: Button(action:
                {
                },label: {
                Text("Cancel")
                
            })
            )
        }

    }
}

struct LabelTextField:View {
    var label:String
    var placeHolder:String
    
    var body:some View{
        VStack(alignment: .leading) {
            Text(label)
                .font(.headline)
            TextField(placeHolder, text: .constant(""))
                .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)).cornerRadius(5)
                .foregroundColor(.gray)
                .padding(10)
            
        }.padding(.horizontal, 10)
    }
}

struct RoundedButton:View {
    var text:String
    var body: some View{
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            HStack {
                Spacer()
                Text(text).font(.headline).foregroundColor(.white)
                Spacer()
            }
            .padding(.vertical,10.0)
            .background(Color.red)
            .cornerRadius(4.0)
            .padding(.horizontal,50)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
