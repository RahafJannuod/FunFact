import SwiftUI


struct AboutView: View {
    var body: some View {
        VStack {
            Text("About This App")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("This app provides fun facts about different topics.")
                .padding()
        }
        .navigationTitle("About")
    }
}

