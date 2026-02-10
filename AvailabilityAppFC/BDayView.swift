//
//  BDayView.swift
//  AvailabilityAppFC
//
//  Created by Aryan K. Prajapati on 12/15/25.
//
import SwiftUI
struct BDayView: View {
    @Binding var wakeUp: Date
    
    var body: some View {
        Grid(horizontalSpacing: 25, verticalSpacing: 16) {
            
            GridRow {
                blockTitle("Block 5")
                blockTitle("Block 6")
                blockTitle("Block 7")
                blockTitle("Block 8")
            }
            GridRow {
                blockTime("(8:20AM–9:45AM)")
                blockTime("(9:50AM–11:20AM)")
                blockTime("(11:25AM–1:40PM)")
                blockTime("(1:45PM–3:10PM)")
            }
            GridRow {
                classList([
                    "Finlayson - Science",
                    "Moehrlin - Science",
                    "Burns - English",
                    "Wold - Math",
                    "Ludois - Math",
            ])
                classList([
                    "Doherty - Science",
                    "Poulos - English",
                    "Dubinski - English",
                    "Wilk - Math",
                    "Blazek - SS"
                    
                ])
                classList([
                    "Johnson - Science (B/C Lunch)",
                    "Morley - Science (A/B Lunch)",
                    "Brownley - English (A/B Lunch)",
                    "Silver - Math (A/C Lunch)",
                    "Skarb - Math (B/C Lunch)",
                    "Bravo - Spanish (B/C Lunch)"
                ])
                classList([
                    "Caccamo - Science",
                    "Barry - Science",
                    "Yalda - Math",
                    "Kalchbrenner - English",
                    "Treutler - Spanish"
                ])}}
        .padding()
    }
    
    
    
    
    
    
    
    //                         ||||||
    // needed for organization vvvvvv
    //
    
    
    
    
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
            .font(.title)
            .frame(maxWidth: .infinity)
    }

    
    @ViewBuilder
    func classList(_ classes: [String]) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            ForEach(classes, id: \.self) { item in
                Text(item)
                    .font(.title3)
            }}
        .frame(maxWidth: .infinity, alignment: .topLeading)
    }}


