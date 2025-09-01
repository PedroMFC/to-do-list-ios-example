//
//  ContentView.swift
//  ToDoList
//
//  Created by Pedro Manuel Flores Crespo on 29/8/25.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        NavigationView {
            if viewModel.isSignedIn, !viewModel.currentUserID.isEmpty {
                // signed in
                accountView()
            } else {
                LoginView()
            }
        }
    }
    
    @ViewBuilder
    func accountView() -> some View {
        TabView{
            ToDoListView(userId: viewModel.currentUserID)
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem{
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    MainView()
}
