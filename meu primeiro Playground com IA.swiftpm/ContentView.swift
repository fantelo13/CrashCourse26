import SwiftUI
import FoundationModels
import Playgrounds

@available(iOS 26.0, *)
struct ContentView: View {
    let session = LanguageModelSession()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .task {
        }
    }
}

@available(iOS 26.0, *)
#Playground("TesteIA 1") {
    let session = LanguageModelSession()
    
    do {
        let response = try await session.respond(to: "Tell me a list of famous people")
        
        let result = response.content
    }
    
    let result = response.content.isEmpty ? "No result" : response.content
    
    print(result)
    
}


