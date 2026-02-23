
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
                .foregroundStyle(isADay(for: wakeUp) ? .brown : .orange)
                // switches data based on whether its an A day or not
                if isSchoolDay(wakeUp) {
                    
                    if isADay(for: wakeUp) {
                        ADayView(wakeUp: $wakeUp)
                    } else {
                        BDayView(wakeUp: $wakeUp)
                    }
                    
                } else {
                    VStack(spacing: 20) {
                        Text("No teachers available")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        Text("School is closed today.")
                            .font(.title2)
                    }
                    .padding(.top, 50)
                }
                
            }
            Spacer()
            
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
            
            if isSchoolDay(wakeUp) {
                Circle()
                    .fill(isADay(for: wakeUp) ? .brown : .orange)
                    .frame(width: 50, height: 50)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                    .padding()
                    .animation(.easeInOut(duration: 0.25), value: wakeUp)
            }
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

