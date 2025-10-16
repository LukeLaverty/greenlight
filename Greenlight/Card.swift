import SwiftUI

struct Card: View {
    @State private var green: Color = generateGreen()

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.white)
                
                VStack(spacing: 0) {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(green)
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 10))
                        
                    Text(green.description.prefix(7))
                        .font(.title)
                        .padding(5)
                }
                
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
}

#Preview {
    ZStack {
        Color.gray.ignoresSafeArea()
        Card().padding(20)
    }
}
