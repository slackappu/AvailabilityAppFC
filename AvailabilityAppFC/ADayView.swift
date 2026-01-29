//
//  ADayView.swift
//  AvailabilityAppFC
//
//  Created by Aryan K. Prajapati on 12/15/25.
//
import SwiftUI
struct ADayView: View {
    var body: some View {
        Grid(horizontalSpacing: 25, verticalSpacing: 16) {
            
            GridRow {
                blockTitle("Block 1")
                blockTitle("Block 2")
                blockTitle("Block 3")
                blockTitle("Block 4")
            }
            
            GridRow {
                blockTime("(8:20AM–9:45AM)")
                blockTime("(9:50AM–11:20AM)")
                blockTime("(11:25AM–1:40PM)")
                blockTime("(1:45PM–3:10PM)")
            }
            
            GridRow {
                classList([
                    "Marks - Science",
                    "Wiggin - English",
                    "Hirschauer - Math"
                ])
                classList([
                    "Heintzelman - Science",
                    "Spiering - English",
                    "Manthey - English",
                    "Olsen - Math",
                    "Justeau - French"
                ])
                classList([
                    "Cassidy - Science (A/B Lunch)",
                    "Michelin - English (A/B Lunch)",
                    "Ballarini - Math (A/B Lunch)",
                    "Kiepura - Math (B/C Lunch)"
                ])
                classList([
                    "Pataky - Science",
                    "Connell - English",
                    "Carlisle - Math",
                    "Decaluwe - Social Studies"
                ])
            }
        }
        .padding()
    }
    
    
    
    
    
    
    
    
  //                         ||||||
  // needed for organization vvvvvv
    
    @ViewBuilder
    func blockTitle(_ text: String) -> some View {
        Text(text)
            .font(.largeTitle)
            .bold()
            .underline()
            .frame(maxWidth: .infinity)
    }
    @ViewBuilder
    func blockTime(_ text: String) -> some View {
        Text(text)
            .font(.title2)
            .frame(maxWidth: .infinity)
    }
    @ViewBuilder
    func classList(_ classes: [String]) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            ForEach(classes, id: \.self) { item in
                Text(item)
                .font(.title3)
            }
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
    }
}

#Preview {
    ADayView()
}
