//
//  ADayView.swift
//  AvailabilityAppFC
//
//  Created by Aryan K. Prajapati on 12/15/25.
//
import SwiftUI
struct ADayView: View {
    var body: some View {
        VStack(){
            HStack(spacing: 50){
                Text("1st Period")
                Text("2nd Period")
                Text("3rd Period")
                Text("4th Period")
            }
            HStack(){
                VStack(){
                    Text("Marks - Science")
                    Text("Wiggin - English")
                    Text("Hirschauer - Math")
                }
                VStack(){
                    Text("Heintzelman - Science")
                    Text("Spiering - English")
                    Text("Manthey - English")
                    Text("Olsen - Math")
                    Text("Justeau - French")
                }
                VStack(){
                    Text("Cassidy - Science (A/B Lunch)")
                    Text("Michelin - English (A/B Lunch)")
                    Text("Ballarini - Math (A/B Lunch)")
                    Text("Kiepura - Math (B/C Lunch)")
                }
                VStack(){
                    Text("Pataky - Science")
                    Text("Connell - English")
                    Text("Carlisle - Math")
                    Text("Decaluwe - Social Studies")
                }
            }
        }
    }
}
