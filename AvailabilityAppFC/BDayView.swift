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
        Grid(horizontalSpacing: 25, verticalSpacing: 16
        ) {

            GridRow {
                blockTitle("Block 5")
                blockTitle("Block 6")
                blockTitle("Block 7")
                blockTitle("Block 8")
            }

            GridRow {
                blockTime("(8:20–9:45)")
                blockTime("(9:50–11:20)")
                blockTime("(11:25–1:40)")
                blockTime("(1:45–3:10)")
            }

            GridRow {
                classList(block5Classes)
                classList(block6Classes)
                classList(block7Classes)
                classList(block8Classes)
            }
        }
        .frame(maxHeight: .infinity)
        .padding()
    }



    @ViewBuilder
    func blockTitle(_ text: String) -> some View {
        Text(text)
            .font(.system(.largeTitle, design: .serif))
            .bold()
            .underline()
            .frame(maxWidth: .infinity)
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
        .gridCellUnsizedAxes(.vertical)
    }
}


let block5Classes = [
    ClassInfo(teacher: "Finlayson", subject: "Science", extra: nil, email: "andy.finlayson@d214.org"),
    ClassInfo(teacher: "Moehrlin", subject: "Science", extra: nil, email: "gregory.moehrli@d214.org"),
    ClassInfo(teacher: "Burns", subject: "English", extra: nil, email: "jaime.burns@d214.org"),
    ClassInfo(teacher: "Wold", subject: "Math", extra: nil, email: "shannon.wold@d214.org"),
    ClassInfo(teacher: "Ludois", subject: "Math", extra: nil, email: "courtney.ludois@d214.org")
]

let block6Classes = [
    ClassInfo(teacher: "Doherty", subject: "Science", extra: nil, email: "smitha.doherty@d214.org"),
    ClassInfo(teacher: "Poulos", subject: "English", extra: nil, email: "zachary.poulos@d214.org"),
    ClassInfo(teacher: "Dubinski", subject: "English", extra: nil, email: "stacy.dubinski@d214.org"),
    ClassInfo(teacher: "Wilk", subject: "Math", extra: nil, email: "celina.wilk@d214.org"),
    ClassInfo(teacher: "Blazek", subject: "Social Studies", extra: nil, email: "jodi.blazek@d214.org")
]

let block7Classes = [
    ClassInfo(teacher: "Johnson", subject: "Science", extra: "B/C Lunch", email: "eric.johnson@d214.org"),
    ClassInfo(teacher: "Morley", subject: "Science", extra: "A/B Lunch", email: "niki.morley@d214.org"),
    ClassInfo(teacher: "Brownley", subject: "English", extra: "A/B Lunch", email: "walter.brownley@d214.org"),
    ClassInfo(teacher: "Silver", subject: "Math", extra: "A/C Lunch", email: "samuel.silver@d214.org"),
    ClassInfo(teacher: "Skarb", subject: "Math", extra: "B/C Lunch", email: "keri.skarb@d214.org"),
    ClassInfo(teacher: "Bravo", subject: "Spanish", extra: "B/C Lunch", email: "cristina.bravo@d214.org")
]

let block8Classes = [
    ClassInfo(teacher: "Caccamo", subject: "Science", extra: nil, email: "alyssa.caccamo@d214.org"),
    ClassInfo(teacher: "Barry", subject: "Science", extra: nil, email: "dawn.barry@d214.org"),
    ClassInfo(teacher: "Yalda", subject: "Math", extra: nil, email: "heather.yalda@d214.org"),
    ClassInfo(teacher: "Kalchbrenner", subject: "English", extra: nil, email: "amanda.kalchbrenner@d214.org"),
    ClassInfo(teacher: "Treutler", subject: "Spanish", extra: nil, email: "erin.treutler@d214.org")
]




