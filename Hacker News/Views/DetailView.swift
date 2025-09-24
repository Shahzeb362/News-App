//
//  DetailView.swift
//  Hacker News
//
//  Created by Shahzeb Khan on 15.09.25.
//

import SwiftUI


struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}


    
    

