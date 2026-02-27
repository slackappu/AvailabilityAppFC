//
//  ADayView.swift
//  AvailabilityAppFC
//
//  Created by Aryan K. Prajapati on 12/15/25.
//
import SwiftUI

struct ADayView: View {
    @Environment(\.colorScheme) var colorScheme
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
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding()
    }
    
    
    
    
    //                          |||||||
    // needed for organizations vvvvvvv
    
    
    @ViewBuilder
    func blockTitle(_ text: String) -> some View {
        Text(text)
            .bold()
            .underline()
            .frame(maxWidth: .infinity)
            .font(.system(.largeTitle, design: .serif))
    }
    
    @ViewBuilder
    func blockTime(_ text: String) -> some View {
        Text(text)
            .font(.system(.title, design: .serif))
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
    }
}



struct ClassBox: View {
    let classInfo: ClassInfo
    @State var showEmailSheet = false
    @EnvironmentObject var appData: AppData
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Button {
                showEmailSheet = true
            } label: {
                Text(classInfo.teacher)
                    .font(.headline)
            }
            
            Text(classInfo.subject)
                .font(.subheadline)
                .foregroundColor(.primary)
            
            if let extra = classInfo.extra {
                Text(extra)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .padding(10)
        .frame(maxWidth: .infinity, minHeight: 100, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(subjectColor.opacity(0.2))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(subjectColor, lineWidth: 1.5)
        )
        .confirmationDialog(classInfo.teacher, isPresented: $showEmailSheet, titleVisibility: .visible) {
            Button("Copy Email") {
                UIPasteboard.general.string = classInfo.email
                UIImpactFeedbackGenerator(style: .light).impactOccurred()
                
                appData.showToast = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
                    appData.showToast = false
                })
            }
            
            Button("Cancel", role: .cancel) {}
        }
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
    let email: String
}


// organizes teachers w/subjects & lunches

let block1Classes = [
    ClassInfo(teacher: "Marks", subject: "Science", extra: nil, email: "chris.marks@d214.org"),
    ClassInfo(teacher: "Wiggin", subject: "English", extra: nil, email: "daniel.wiggin@d214.org"),
    ClassInfo(teacher: "Hirschauer", subject: "Math", extra: nil, email: "brian.hirschauer@d214.org")
]

let block2Classes = [
    ClassInfo(teacher: "Heintzelman", subject: "Science", extra: nil, email: "jonathan.heintzelman@d214.org"),
    ClassInfo(teacher: "Spiering", subject: "English", extra: nil, email: "kristen.spiering@d214.org"),
    ClassInfo(teacher: "Manthey", subject: "English", extra: nil, email: "kent.manthey@d214.org"),
    ClassInfo(teacher: "Olsen", subject: "Math", extra: nil, email: "mikayla.olsen@d214.org"),
    ClassInfo(teacher: "Justeau", subject: "French", extra: nil, email: "annelaure.champetier@d214.org")
]

let block3Classes = [
    ClassInfo(teacher: "Cassidy", subject: "Science", extra: "A/B Lunch", email: "chris.cassidy1@d214.org"),
    ClassInfo(teacher: "Michelin", subject: "English", extra: "A/B Lunch", email: "matthew.micheli@d214.org"),
    ClassInfo(teacher: "Ballarini", subject: "Math", extra: "A/B Lunch", email: "jackie.ballarin@d214.org"),
    ClassInfo(teacher: "Kiepura", subject: "Math", extra: "B/C Lunch", email: "chris.kiepura@d214.org")
]

let block4Classes = [
    ClassInfo(teacher: "Pataky", subject: "Science", extra: nil, email: "kelley.pataky@d214.org"),
    ClassInfo(teacher: "Connell", subject: "English", extra: nil, email: "britt.connell@d214.org"),
    ClassInfo(teacher: "Carlisle", subject: "Math", extra: nil, email: "timothy.carlisle@d214.org"),
    ClassInfo(teacher: "Decaluwe", subject: "Social Studies", extra: nil, email: "nyssa.decaluwe@d214.org")
]


