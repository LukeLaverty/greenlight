import SwiftUI

struct SwipeableCard: View {
    @State private var green: Color = generateGreen()
    @State private var offset: CGSize = .zero

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
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            .frame(width: geometry.size.width, height: geometry.size.height)
            .offset(x: offset.width, y: 0)
            .rotationEffect(.degrees(Double(offset.width / 50)))
            .gesture(DragGesture()
                .onChanged { gesture in
                    offset = gesture.translation
                }
                .onEnded { _ in
                    if abs(offset.width) > geometry.size.width / 2 {
                        withAnimation(.easeIn(duration: 0.5)) {
                            offset = CGSize(width: offset.width > 0 ? 1000 : -1000, height: 0)
                        }
                    } else {
                        withAnimation(.spring()) {
                            offset = .zero
                        }
                    }
                }
            )
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
        SwipeableCard()
    }
}
