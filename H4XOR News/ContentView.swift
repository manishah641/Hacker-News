//
//  ContentView.swift
//  H4XOR News
//
//  Created by Syed Muhammad on 16/03/2020.
//  Copyright © 2020 Syed Muhammad. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url )) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("Hacker News")
            
        }
        .onAppear {
            self.networkManager.fetchData()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//let posts :[Post]=[
// Post(id: "1", title: "Hello"),
//  Post(id: "2", title: "Hello"),
//   Post(id: "3", title: "Hello")
//]
