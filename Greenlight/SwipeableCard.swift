import SwiftUI

struct SwipeableCard: View {
    @State private var offset: CGSize = .zero

    var body: some View {
        GeometryReader { geometry in
            Card()
                .frame(width: geometry.size.width, height: geometry.size.height)
                .offset(x: offset.width, y: 0)
                .rotationEffect(.degrees(Double(offset.width / 50)))
                .gesture(DragGesture()
                    .onChanged { gesture in
                        offset = gesture.translation
                    }
                    .onEnded { _ in
                        if abs(offset.width) > geometry.size.width / 2 {
                            UIImpactFeedbackGenerator(style: .light).impactOccurred()
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
}

#Preview {
    ZStack {
        Color.gray.ignoresSafeArea()
        SwipeableCard().padding(20)
    }
}
