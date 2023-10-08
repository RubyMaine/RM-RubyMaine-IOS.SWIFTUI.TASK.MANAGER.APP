//
//  ContentView.swift
//  Project Management App
//
//  Created by RubyMaine on 14/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                TabView {
                    HomeScreen()
                        .tabItem {
                            Image(systemName: "house.fill")
                        }
                        .toolbarBackground(Color.white, for: .tabBar)

                    Text("Сохраненный")
                        .tabItem {
                            Image(systemName: "folder.fill")
                        }

                    Text("Мой планы")
                        .tabItem {
                            Image(systemName: "doc.plaintext.fill")
                        }

                    Text("Дата оканчание")
                        .tabItem {
                            Image(systemName: "calendar")
                        }
                } // TAB VIEW
                .accentColor(.black)
            }
            .toolbar {
                
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    
                    CircularImageView(name: "profile", size: 42)
                    
                    Text("Приветствие, RubyMaine!")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "bell.fill")
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
