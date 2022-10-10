//
//  ContentView.swift
//  StudyAPI
//
//  Created by 武久　直幹 on 2022/10/10.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        TestAPIView(viewModel: viewModel)
    }
}
    
struct ContentView_Previews: PreviewProvider {

    static var previews: some View {
        ContentView()
    }
}
