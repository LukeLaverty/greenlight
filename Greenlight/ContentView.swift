import SwiftUI

struct ContentView: View {
    @State private var green = generateGreen()

    var body: some View {
        ZStack {
            green.ignoresSafeArea()

            VStack(spacing: 40) {
                Text("Greenlight?")
                    .font(.title)
                    .foregroundColor(.white)

                HStack(spacing: 50) {
                    Button(action: updateGreen) {
                        Image(systemName: "hand.thumbsdown.fill")
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                    }

                    Button(action: updateGreen) {
                        Image(systemName: "hand.thumbsup.fill")
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                    }
                }
                
                Text(green.description.prefix(7))
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
    }

    static func generateGreen() -> Color {
        return Color(
            hue: Double.random(in: 0.3...0.4),
            saturation: Double.random(in: 0.4...1.0),
            brightness: Double.random(in: 0.5...1.0)
        )
    }
    
    func updateGreen() -> Void {
        green = ContentView.generateGreen()
    }
}

#Preview {
    ContentView()
}
