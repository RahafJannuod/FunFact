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
                        .font(.largeTitle)
                    
                    Image("yelloe1")
                        .resizable()
                        .cornerRadius(11)
                        .aspectRatio(contentMode: .fit)
                    
                    HStack(spacing: 20) {
                        Button(action: {
                            displayText = "The largest piece of fossilised dinosaur poo discovered is over 30cm long and over two litres in volume!"
                        }) {
                            Text("Fact 1")
                                .fontWeight(.heavy)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        
                        Button(action: {
                            displayText = "A chicken once lived for 18 months without a head!"
                        }) {
                            Text("Fact 2")
                                .fontWeight(.heavy)
                                .padding()
                                .background(Color.pink)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        
                        Button(action: {
                            displayText = "Animals can experience time differently from humans!"
                        }) {
                            Text("Fact 3")
                                .fontWeight(.heavy)
                                .padding()
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                    
                  
                    NavigationLink(destination: AboutView()) {
                        Text("About")
                            .fontWeight(.heavy)
                            .padding()
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.top, 20)
                }
            }
//            .navigationTitle("Home")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

