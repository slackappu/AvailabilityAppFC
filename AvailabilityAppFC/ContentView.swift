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
    }
}

#Preview {
    ContentView()
}
