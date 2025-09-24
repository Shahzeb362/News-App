//
//  ContentView.swift
//  Hacker News
//
//  Created by Shahzeb Khan on 15.09.25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {

            NavigationView{
               
                List(networkManager.posts){ post in
                    NavigationLink(destination: DetailView(url: post.url)) {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }

                    }
                    
                }
                .navigationBarTitle("H4XOR NEWS")
            }
            .onAppear {
                networkManager.fetchData()
            }
    }
    }



#Preview {
    ContentView()
}
