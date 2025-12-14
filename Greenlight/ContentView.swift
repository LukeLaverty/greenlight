import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ZStack {
                Color.gray.ignoresSafeArea()
                
                VStack(spacing: 0) {
                    Text("Greenlight?")
                        .font(.largeTitle.bold().italic())
                        .foregroundColor(Color.white)
                    
                    SwipeableCard().padding(20)
                }
            }
            .tabItem {
                Label("Home", systemImage: "arrowshape.left.arrowshape.right")
            }
            
            ZStack {
                Color.gray.ignoresSafeArea()
                
                ScrollView {
                    LazyVGrid(
                        columns: [GridItem(.flexible(), spacing: 10), GridItem(.flexible(), spacing: 10)],
                        spacing: 10
                    ) {
                        Card(compact: true)
                        Card(compact: true)
                        Card(compact: true)
                        Card(compact: true)
                        Card(compact: true)
                        Card(compact: true)
                        Card(compact: true)
                        Card(compact: true)
                        Card(compact: true)
                        Card(compact: true)
                    }
                }.padding(.horizontal, 20)
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
