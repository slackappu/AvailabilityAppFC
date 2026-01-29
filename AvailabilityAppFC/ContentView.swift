
import SwiftUI

struct ContentView: View {
    @State var wakeUp = Date.now
    @State var colorDay: Bool = true
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Button {
                    changeDay(by: -1)
                    } label: {
                        Image(systemName: "arrow.left")
                    }

                    DatePicker("", selection: $wakeUp, displayedComponents: .date)
                        .labelsHidden()
                    Button {
                        changeDay(by: 1)
                    } label: {
                        Image(systemName: "arrow.right")
                    }

                }
                if isADay(for: wakeUp) {
                    ADayView()
                } else {
                    BDayView()
                }
            }
            VStack{
                Circle()
                    .frame(width: 50, height: 50, alignment: .topTrailing)
//                Button {
//                    fetchCSVData()
//                } label: {
//                    Text("test")
//                }

            }
            .foregroundStyle(isADay(for: wakeUp) ? .orange : .brown)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .padding()
        }
    }
    
    enum Subject {
        case Science
        case History
        case Math
        case English
        case SocialStudies
        case Spanish
        case French
    }
    
    func changeDay(by value: Int) {
        if let newDate = Calendar.current.date(byAdding: .day, value: value, to: wakeUp) {
            wakeUp = newDate
        }
    }
    
}











#Preview {
    ContentView()
}

