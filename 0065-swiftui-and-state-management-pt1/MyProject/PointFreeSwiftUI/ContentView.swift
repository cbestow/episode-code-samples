import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var state: AppState

    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: CounterView(state: self.state)) {
                    Text("Counter demo")
                }
                NavigationLink(destination: EmptyView()) {
                    Text("Favorite primes")
                }
            }.navigationBarTitle("State management")
        }
    }
}

/// Note that this version, similar to the screencast, did not work. Found the `@Published` variation in the repository

//class AppState: ObservableObject {
//    var count = 0 {
//        didSet {
//            didChange.send()
//        }
//    }
//
//    let didChange = PassthroughSubject<Void, Never>()
//}

class AppState: ObservableObject {
    @Published var count = 0
}


struct CounterView: View {
    @ObservedObject var state: AppState

    var body: some View {
        VStack {
            HStack {
                Button(action: { self.state.count -= 1 }) {
                    Text("-")
                }
                Text("\(self.state.count)")
                Button(action: { self.state.count += 1 }) {
                    Text("+")
                }
            }
            Button(action: {}) {
                Text("Is this prime?")
            }
            Button(action: {}) {
                Text("What is the \(ordinal(self.state.count)) prime?")
            }
        }.font(.title)
    }
}

private func ordinal(_ n: Int) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .ordinal
    return formatter.string(from: NSNumber(value: n)) ?? ""
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView(state: AppState())
    }
}
