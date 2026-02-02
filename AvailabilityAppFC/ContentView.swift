
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
                    .font(.largeTitle)
                    .padding()
                    
                    DatePicker("", selection: $wakeUp, displayedComponents: .date)
                        .labelsHidden()
                        .scaleEffect(1.5)
                        .frame(width: 150)
                    
                    Button {
                        changeDay(by: 1)
                    } label: {
                        Image(systemName: "arrow.right")
                    }
                    .font(.largeTitle)
                    .padding()
                }
                
                // switches data based on whether its an A day or not
                if isADay(for: wakeUp) {
                    ADayView()
                } else {
                    BDayView()
                }
            Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
            
            VStack {
                Circle()
                    .frame(width: 50, height: 50)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .padding()
        }
        .foregroundStyle(isADay(for: wakeUp) ? .orange : .brown)
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

