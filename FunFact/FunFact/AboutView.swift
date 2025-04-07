import SwiftUI


struct AboutView: View {
    var body: some View {
        ZStack {
                   Color.yellow
                   .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 6) {
                Text("About This App")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .foregroundColor(.red)
                                    .padding(.bottom, 30)
                                Text("🟡 This app provides fun facts about different topics in a fun and interactive way.")
                                Text("📱 Version: 1.0")
                                Text("👩‍💻 Developed by: Rahaf Jannuod")
                                Text("🗓️ Created in April 2025 as part of my SwiftUI learning journey.")
                                Text("🛠️ Built using Xcode & SwiftUI.")
                                Text("✅ You can find the test code and project files on GitHub:")
                                                Link("👉 View it on GitHub", destination: URL(string: "https://github.com/RahafJannuod")!)
                               
                            }
                            .font(.title3)
                            .padding()
                            .background(Color.white.opacity(0.3))
                            .cornerRadius(15)
                            .padding()
        }
        .navigationTitle("About")
    }
}

