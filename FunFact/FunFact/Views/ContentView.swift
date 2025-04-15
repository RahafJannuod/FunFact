import SwiftUI

struct ContentView: View {
    @State private var displayText = NSLocalizedString("initial", comment: "")
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.yellow)
                    .ignoresSafeArea()
                
                VStack {
                    Text(LocalizedStringKey("app tiltle"))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                        .multilineTextAlignment(.leading)
                    
                    Text(displayText)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                        .minimumScaleFactor(0.5)
                        .frame(height: 100)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                                Image("sun2")
                                    .resizable()
                                    .scaledToFill()
                                    .clipped()
                            )
                        .cornerRadius(20)
                        .padding(.top, 0)
                    
                    
                    Image("yelloe1")
                        .resizable()
                        .cornerRadius(11)
                        .aspectRatio(contentMode: .fit)
                       
                    
                    HStack(spacing: 20) {
                        Button(action: {
                            displayText = NSLocalizedString("fact_1_text", comment: "")
                        }) {
                            Text(LocalizedStringKey("fact_1"))
                                .fontWeight(.heavy)
                                .padding()
                                .background(Color.blue.opacity(0.5))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .accessibilityIdentifier("fact1_button")
                        
                        Button(action: {
                            displayText = NSLocalizedString("fact_2_text", comment: "")
                        }) {
                            Text(LocalizedStringKey("fact_2"))
                                .fontWeight(.heavy)
                                .padding()
                                .background(Color.red.opacity(0.6))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .accessibilityIdentifier("fact2_button")
                        
                        Button(action: {
                            displayText = NSLocalizedString("fact_3_text", comment: "")
                        }) {
                            Text(LocalizedStringKey("fact_3"))
                                .fontWeight(.heavy)
                                .padding()
                                .background(Color.brown.opacity(0.7))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .accessibilityIdentifier("fact3_button")
                    }
                    
                    NavigationLink(destination: AboutView()) {
                        Text(LocalizedStringKey("about"))
                            .fontWeight(.heavy)
                            .padding()
                            .background(Color.black.opacity(0.8))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .accessibilityIdentifier("About_button")
                    .padding(.top, 20)
                    .padding(.bottom,10)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

