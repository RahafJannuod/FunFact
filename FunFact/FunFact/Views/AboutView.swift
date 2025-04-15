import SwiftUI


struct AboutView: View {
    var body: some View {
        ZStack {
                   Color.yellow
                   .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 6) {
                Text(LocalizedStringKey("about This App"))
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .foregroundColor(.red)
                                    .padding(.bottom, 30)
                Text("about_description")
                Text("about_app_version")
                Text("about_developer_name")
                Text("about_creation_date")
                Text("about_tech_stack")
                Text("about_github_description")
                Link("about_github_link", destination: URL(string: "https://github.com/RahafJannuod")!)

                               
                            }
                            .font(.title3)
                            .padding()
                            .background(Color.white.opacity(0.3))
                            .cornerRadius(15)
                            .padding()
        }
        .navigationTitle(LocalizedStringKey("about"))
    }
}

