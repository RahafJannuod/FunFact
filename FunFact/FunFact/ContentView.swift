import SwiftUI

struct ContentView: View {
    @State private var displayText = "the fact is:"
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.yellow)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Fun Facts App")
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
                            displayText = "Sharks existed before trees"
                        }) {
                            Text("Fact 1")
                                .fontWeight(.heavy)
                                .padding()
                                .background(Color.blue.opacity(0.5))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        
                        Button(action: {
                            displayText = "A chicken once lived for 18 months without a head!"
                        }) {
                            Text("Fact 2")
                                .fontWeight(.heavy)
                                .padding()
                                .background(Color.red.opacity(0.6))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        
                        Button(action: {
                            displayText = "A snail can sleep for three years"
                        }) {
                            Text("Fact 3")
                                .fontWeight(.heavy)
                                .padding()
                                .background(Color.brown.opacity(0.7))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .accessibilityIdentifier("fact3_button")
                    }
                    
                    NavigationLink(destination: AboutView()) {
                        Text("About")
                            .fontWeight(.heavy)
                            .padding()
                            .background(Color.black.opacity(0.8))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
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

