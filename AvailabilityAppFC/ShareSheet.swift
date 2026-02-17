import UIKit
import SwiftUI

struct ShareSheet: UIViewControllerRepresentable {
    let activityItems: [Any]

    func makeUIViewController(context: Context) -> UIActivityViewController {
        UIActivityViewController(
            activityItems: activityItems,
            applicationActivities: nil
        )
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {}
}

struct TeacherEmailSheet: View {
    let classInfo: ClassInfo
    @State var showShare = false

    var body: some View {
        VStack(spacing: 20) {

            Text(classInfo.teacher)
                .font(.title)
                .bold()

            Text(classInfo.subject)
                .foregroundColor(.secondary)
            Button {
                                    UIPasteboard.general.string = classInfo.email
                                    UIImpactFeedbackGenerator(style: .light).impactOccurred()
                                    showShare = true
                                } label: {
                                    Text(classInfo.email)
                                        .foregroundColor(.blue)
                                        .underline()
                                }

                                Text("Tap to copy & share")
                                    .font(.caption)
                                    .foregroundColor(.secondary)

        }
        .padding()
        .sheet(isPresented: $showShare) {
            ShareSheet(activityItems: [classInfo.email])

        }
    }
        
}
