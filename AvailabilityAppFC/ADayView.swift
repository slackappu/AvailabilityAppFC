//
//  ADayView.swift
//  AvailabilityAppFC
//
//  Created by Aryan K. Prajapati on 12/15/25.
//
import SwiftUI

struct ADayView: View {
    @Binding var wakeUp: Date
    
    var body: some View {
        Grid(horizontalSpacing: 25, verticalSpacing: 20) {
            
            GridRow {
                blockTitle("Block 1")
                blockTitle("Block 2")
                blockTitle("Block 3")
                blockTitle("Block 4")
            }
            
            GridRow {
                blockTime("(8:20–9:45)")
                blockTime("(9:50–11:20)")
                blockTime("(11:25–1:40)")
                blockTime("(1:45–3:10)")
            }
            
            GridRow {
                classList(block1Classes)
                classList(block2Classes)
                classList(block3Classes)
                classList(block4Classes)
            }
        }
        .frame(maxHeight: .infinity)
        .padding()
    }
        
    
    
    
    //                          |||||||
    // needed for organizations vvvvvvv
    
    
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
    func classList(_ classes: [ClassInfo]) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            ForEach(classes) { item in
                ClassBox(classInfo: item)
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .gridCellUnsizedAxes(.vertical)
    }
}



struct ClassBox: View {
    let classInfo: ClassInfo
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(classInfo.teacher)
                .font(.headline)
            
            Text(classInfo.subject)
                .font(.subheadline)
                .foregroundColor(.black)
            
            if let extra = classInfo.extra {
                Text(extra)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .padding(10)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(subjectColor.opacity(0.2))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(subjectColor, lineWidth: 1.5)
        )
    }
    
    //sets colors for different subjects
    
    var subjectColor: Color {
        switch classInfo.subject {
        case "Math":
            return .blue
        case "Science":
            return .green
        case "English":
            return .red
        case "French":
            return .purple
        case "Social Studies":
            return .orange
        default:
            return .purple
        }
    }
}

struct ClassInfo: Identifiable {
    let id = UUID()
    let teacher: String
    let subject: String
    let extra: String?
}


// organizes teachers w/subjects & lunches

let block1Classes = [
    ClassInfo(teacher: "Marks", subject: "Science", extra: nil),
    ClassInfo(teacher: "Wiggin", subject: "English", extra: nil),
    ClassInfo(teacher: "Hirschauer", subject: "Math", extra: nil)
]

let block2Classes = [
    ClassInfo(teacher: "Heintzelman", subject: "Science", extra: nil),
    ClassInfo(teacher: "Spiering", subject: "English", extra: nil),
    ClassInfo(teacher: "Manthey", subject: "English", extra: nil),
    ClassInfo(teacher: "Olsen", subject: "Math", extra: nil),
    ClassInfo(teacher: "Justeau", subject: "French", extra: nil)
]

let block3Classes = [
    ClassInfo(teacher: "Cassidy", subject: "Science", extra: "A/B Lunch"),
    ClassInfo(teacher: "Michelin", subject: "English", extra: "A/B Lunch"),
    ClassInfo(teacher: "Ballarini", subject: "Math", extra: "A/B Lunch"),
    ClassInfo(teacher: "Kiepura", subject: "Math", extra: "B/C Lunch")
]

let block4Classes = [
    ClassInfo(teacher: "Pataky", subject: "Science", extra: nil),
    ClassInfo(teacher: "Connell", subject: "English", extra: nil),
    ClassInfo(teacher: "Carlisle", subject: "Math", extra: nil),
    ClassInfo(teacher: "Decaluwe", subject: "Social Studies", extra: nil)
]
