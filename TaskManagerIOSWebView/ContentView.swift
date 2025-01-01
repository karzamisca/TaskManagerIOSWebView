import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        WebView(url: URL(string: "https://kylongtask.azurewebsites.net/login")!)
            .edgesIgnoringSafeArea(.all)
    }
}

struct WebView: UIViewRepresentable {
    var url: URL

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        
        // Here, you can configure the WebView (optional customization)
        let configuration = WKWebViewConfiguration()
        // Add any custom settings here, e.g., for cookies, caches, etc.
        
        let request = URLRequest(url: url)
        webView.load(request)
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        // Handle any updates to the WebView if necessary
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

