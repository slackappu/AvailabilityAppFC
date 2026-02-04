
import SwiftUI

struct ContentView: View {
    @State var wakeUp = Date.now
    @State var colorDay = true
    var body: some View {
        
        ZStack {
            VStack {
                HStack {
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
                .foregroundStyle(isADay(for: wakeUp) ? .brown : .orange)
                // switches data based on whether its an A day or not
                if isADay(for: wakeUp) {
                    BDayView(wakeUp: $wakeUp)
                } else {
                    ADayView(wakeUp: $wakeUp)
                }
                
                Spacer() // optional, but helps push content upward
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
            VStack {
                Circle()
                    .frame(width: 50, height: 50)
            }
            .foregroundStyle(isADay(for: wakeUp) ? .brown : .orange)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .padding()
        }
       // .foregroundStyle(isADay(for: wakeUp) ? .orange : .brown)
        .animation(.easeInOut(duration: 0.25), value: wakeUp)

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

