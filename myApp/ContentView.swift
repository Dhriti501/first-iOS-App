//
//  ContentView.swift
//  myApp
//
//  Created by Dhritideepa Gorai on 29/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image("me")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:230)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 7.0))
                Text("Dhritideepa Gorai")
                    .font(Font.custom("Pacifico-Regular", size:40))
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.title2)
                    .bold()
                Divider()
                Divider()
                Divider()
                
                ContactDetails(detail: "811692xxxx", detailImage: "phone.fill")
                Divider()
                
                ContactDetails(detail: "dhritideepa.official@gmail.com", detailImage: "envelope.fill").padding(.top)
            }
        }
    }
}
#Preview {
    ContentView()
}

struct ContactDetails: View {
    var detail: String
    var detailImage: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 50)
                .frame(height:50)
                .padding([.trailing, .leading])
                .foregroundColor(Color(red: 1, green: 0.56, blue: 0.56))
                .overlay(RoundedRectangle(cornerRadius: 50)
                    .stroke(Color.white, lineWidth: 3.0)
                    .padding([.trailing, .leading]))
                .overlay(
                    HStack {
                        Image(systemName: detailImage ).foregroundColor(.white)
                        Text(detail).foregroundColor(.white)
                        .font(.title3)
                    .bold()
                    })
        }
    }
}
