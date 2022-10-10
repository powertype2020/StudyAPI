//
//  CustomView.swift
//  StudyAPI
//
//  Created by 武久　直幹 on 2022/10/10.
//

import Foundation
import SwiftUI

struct TestAPIView: View {
    
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
        List(viewModel.users, id: \.id) { user in
        VStack {
            Text("**Name**: [\(user.name)]")
                .font(.title)
            Text("**UserName**: [\(user.username)]")
                .font(.headline)
            Text("**Email**: [\(user.email)]")
                .font(.title3)
        }
        }
        }
        .navigationTitle("テストAPI")
        .task {
            await viewModel.fetchUsers()
        }
    }
}
