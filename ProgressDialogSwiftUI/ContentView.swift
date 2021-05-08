import SwiftUI

struct ContentView: View {
    
    @State var show = false
    var body: some View {
        ZStack {
            Button(action: {show.toggle()}) {
                Text("Custom Indicator")
            }
            if show {
                GeometryReader { geometry in
                     ProgressDialog().frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                }.background(Color.black.opacity(0.45).edgesIgnoringSafeArea(.all)).onTapGesture {
                    show.toggle()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
