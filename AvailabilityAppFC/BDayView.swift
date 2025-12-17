//
//  BDayView.swift
//  AvailabilityAppFC
//
//  Created by Aryan K. Prajapati on 12/15/25.
//
import SwiftUI
struct BDayView: View {
    var body: some View {
        VStack(){
            HStack(spacing: 50){
                Text("5th Period")
                Text("6th Period")
                Text("7th Period")
                Text("8th Period")
            }
            HStack(){
                VStack(){
                    Text("Finlayson - Science")
                    Text("Moehrlin - Science")
                    Text("Burns - English")
                    Text("Wold - Math")
                    Text("Ludois - Math")
                }
                VStack(){
                    Text("Doherty - Science")
                    Text("Poulos - English")
                    Text("Dubinski - English")
                    Text("Wilk - Math")
                    Text("Blazek - SS")
                }
                VStack(){
                    Text("Johnson - Science (B/C Lunch)")
                    Text("Morley - Science (A/B Lunch)")
                    Text("Brownley - English (A/B Lunch)")
                    Text("Silver - Math (A/C Lunch)")
                    Text("Skarb - Math (B/C Lunch)")
                    Text("Bravo - Spanish (B/C Lunch)")
                }
                VStack(){
                    Text("Caccamo - Science")
                    Text("Barry - Science")
                    Text("Yalda - Math")
                    Text("Kalchbrenner - English")
                    Text("Treutler - Spanish")
                }
            }
        }
    }
}
