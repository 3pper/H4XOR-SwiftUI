//
//  ContentView.swift
//  H4X0R(SwiftUI)
//
//  Created by Egor on 11.05.2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networcingManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networcingManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                            .lineLimit(2)
                    }
                }
            }
            .navigationTitle("H4X0R News")
        }
        .refreshable {
            self.networcingManager.fetchData()
        }
        .onAppear(perform: {
            self.networcingManager.fetchData()
        })
    }
}

//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Hi"),
//    Post(id: "3", title: "Zdarova")
//]


#Preview {
    ContentView()
}
