//
//  ContentView.swift
//  AvailabilityAppFC
//
//  Created by Alex J. Veliyathumalil on 12/15/25.
//

import SwiftUI

struct ContentView: View {
    @State var wakeUp = Date.now
    var body: some View {
        VStack{
            DatePicker("", selection: $wakeUp, in: Date.now..., displayedComponents: .date)
                .labelsHidden()
    }
        .frame(width: 100, height: 100, alignment: .top)
        HStack(spacing: 50){
            Text("1st Period")
            Text("2nd Period")
            Text("3rd Period")
            Text("4th Period")
        }
        .padding()
        
//        HStack(spacing: 50){
//            Text("5th Period")
//            Text("6th Period")
//            Text("7th Period")
//            Text("8th Period")
//        } for b day v
    }
}

#Preview {
    ContentView()
}
