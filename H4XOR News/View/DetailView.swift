//
//  DetailView.swift
//  H4XOR News
//
//  Created by Syed Muhammad on 17/03/2020.
//  Copyright © 2020 Syed Muhammad. All rights reserved.
//

import SwiftUI


struct DetailView: View {
    let url : String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

