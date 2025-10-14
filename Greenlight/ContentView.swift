import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
   
            VStack(spacing: 20) {
                Text("Greenlight?")
                    .font(.largeTitle.bold().italic())
                    .foregroundColor(Color.white)
            
                SwipeableCard()
            }
        }
    }
}

#Preview {
    ContentView()
}
