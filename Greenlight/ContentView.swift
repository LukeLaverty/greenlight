import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ZStack {
                Color.gray.ignoresSafeArea()
                
                VStack(spacing: 20) {
                    Text("Greenlight?")
                        .font(.largeTitle.bold().italic())
                        .foregroundColor(Color.white)
                    
                    ZStack {
                        SwipeableCard()
                        SwipeableCard()
                        SwipeableCard()
                        SwipeableCard()
                        SwipeableCard()
                        SwipeableCard()
                        SwipeableCard()
                        SwipeableCard()
                        SwipeableCard()
                        SwipeableCard()
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
            }
            .tabItem {
                Label("Home", systemImage: "arrowshape.left.arrowshape.right")
            }
            
            ZStack {
                
            }.tabItem {
                Label("Liked", systemImage: "heart")
            }
            
            ZStack {
                
            }.tabItem {
                Label("Statistics", systemImage: "chart.xyaxis.line")
            }
            
            ZStack {
                
            }.tabItem {
                Label("Settings", systemImage: "gear")
            }
        }
    }
}

#Preview {
    ContentView()
}
