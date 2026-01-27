import SwiftUI

struct ContentView: View {  //Define a struct View protocolada
    
    @State var color: Color = .indigo   //Cor central
    @State var color2: Color = .red   //Cor central
    @State var color3: Color = .pink   //Cor central
    @State var value = 0
    @State var value2 = 0
    @State var colors: [Color] = [.blue, .red, .yellow, .green, .black]
    @State var colors2: [Color] = [.gray,.white, .orange, .teal, .purple]

    
    func incrementStep() {
        value += 1
        if value >= colors.count { value = 0 }
    }

    func decrementStep() {
        value -= 1
        if value < 0 { value = colors.count - 1 }
    }
    
    func incrementStep2() {
        value2 += 1
        if value2 >= colors2.count { value2 = 0 }
    }

    func decrementStep2() {
        value2 -= 1
        if value2 < 0 { value2 = colors2.count - 1 }
    }
    
    var body: some View {   //Variavel obrigatoria p view protocolada
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Text("Meu PRIMEIRO color picker! _(muitos Bytes por App)_")
        }
        HStack {
            Spacer()
            Image(systemName: "globe")
                .resizable()
                .imageScale(.small)
                .foregroundColor(colors[value])
                .aspectRatio(contentMode: .fit)
            ColorPicker("Exemplo de Cor", selection: $color3)
            
            Stepper {
                Text("Value: \(value) Color: \(colors[value].description)")
            } onIncrement: {
                incrementStep()
            } onDecrement: {
                decrementStep()
            }
            
            Stepper {
                Text("Value2: \(value2) Color: \(colors2[value2].description)")
            } onIncrement: {
                incrementStep2()
            } onDecrement: {
                decrementStep2()
            }
            
            
            //Text("--> Hello, world _Horizontal!_")
        }
        .frame(height: 300)
        .padding(.horizontal, 30)
        .padding(.vertical, 10)
        .background(colors2[value2])
    }
}

//Como bindar a color3?
//Razão para o fundo mudar -> Fundo fora de Views pertence ao Celular. Não há como mudar
