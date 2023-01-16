//
//  ContentView.swift
//  HACKER NEWS
//
//  Created by Soo Jang on 2023/01/09.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView() {
            List(networkManager.posts) { posts in
                NavigationLink(destination: DetailView(url: posts.url)) {
                    HStack {
                        Text(String(posts.points))
                        Text(posts.title)
                    }
                }
            }
            .navigationTitle("HACKER NEWS")
            .listStyle(.plain)
        }
        .onAppear() {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


