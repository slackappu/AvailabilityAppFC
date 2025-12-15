//
//  ContentView.swift
//  AvailabilityAppFC
//
//  Created by Alex J. Veliyathumalil on 12/15/25.
//

import SwiftUI

struct ContentView: View {
    @State var wakeUp = Date.now
    @State var colorDay: Bool = true
    var body: some View {
        ZStack{
            VStack{
                DatePicker("", selection: $wakeUp, in: Date.now..., displayedComponents: .date)
                    .labelsHidden()
                ADayView()
            }
            VStack{
                Circle()
                    .frame(width: 50, height: 50, alignment: .topTrailing)
            }
            .foregroundStyle(colorDay ? .orange : .brown)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .padding()
                
            }
        }
    }
