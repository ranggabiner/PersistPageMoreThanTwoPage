import SwiftUI

struct ContentView: View {
    @AppStorage("currentPage") var currentPage: String = "FirstPage"

    var body: some View {
        switch currentPage {
        case "FirstPage":
            FirstPageView()
        case "SecondPage":
            SecondPageView()
        case "ThirdPage":
            ThirdPageView()
        default:
            FirstPageView()
        }
    }
}

struct FirstPageView: View {
    @AppStorage("currentPage") var currentPage: String = "FirstPage"

    var body: some View {
        VStack {
            Text("Page pertama (1)")
            Button("Go to Page Kedua") {
                currentPage = "SecondPage"
            }
            Button("Go to Page Ketiga") {
                currentPage = "ThirdPage"
            }
        }
        .padding()
    }
}

struct SecondPageView: View {
    @AppStorage("currentPage") var currentPage: String = "SecondPage"

    var body: some View {
        VStack {
            Text("Page kedua (2)")
            Button("Go to Page Kesatu") {
                currentPage = "FirstPage"
            }
            Button("Go to Page Ketiga") {
                currentPage = "ThirdPage"
            }
        }
        .padding()
    }
}

struct ThirdPageView: View {
    @AppStorage("currentPage") var currentPage: String = "ThirdPage"

    var body: some View {
        VStack {
            Text("Page ketiga (3)")
            Button("Go to Page Kesatu") {
                currentPage = "FirstPage"
            }
            Button("Go to Page Kedua") {
                currentPage = "SecondPage"
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
