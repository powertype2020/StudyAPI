//
//  ViewModel.swift
//  StudyAPI
//
//  Created by 武久　直幹 on 2022/10/10.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var users: [User] = []
    
    func fetchUsers() async {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {
            print("このURLは無効です")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            if let decodedResponse = try? JSONDecoder().decode([User].self, from: data) {
                users = decodedResponse
            }
        } catch {
            print("このデータは有効ではありません")
        }
        }
    }
