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
                blockTitle("1st Block")
                blockTitle("2nd Block")
                blockTitle("3rd Block")
                blockTitle("4th Block")
            }
            
            GridRow {
                blockTime("(8:20–9:45)")
                blockTime("(9:50–11:20)")
                blockTime("(11:25–1:40)")
                blockTime("(1:45–3:10)")
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
