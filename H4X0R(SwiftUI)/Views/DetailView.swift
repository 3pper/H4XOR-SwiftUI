//
//  DetailView.swift
//  H4X0R(SwiftUI)
//
//  Created by Egor on 11.05.2024.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "htpps://www.google.com")
}
