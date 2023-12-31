//
//  HomeView.swift
//  Project Management App
//
//  Created by RubyMaine on 14/08/2023.
//

import SwiftUI

struct HomeScreen: View {
    
    var body: some View {
        VStack {
            
            // MARK: - Top Section
            VStack(alignment: .leading) {
                
                Text("Задача на сегодня:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.top, 50)
                    .padding(.bottom, 5)
                
                Label {
                    Text("5 доступно")
                } icon: {
                    Image(systemName: "star.fill")
                        .font(.system(.footnote))
                        .foregroundColor(.yellow)
                }

                SearchBarView()
                
                HStack {
                    Text("Последние соединения")
                        .font(.headline)
                    Spacer()
                    Text("Посмотреть все")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                .padding(.top, 30)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    LazyHStack(spacing: 15) {
                        Section {
                            ForEach(avatars, id: \.self) { value in
                                CircularImageView(name: value, size: 52)
                            }
                        } footer: {
                            Text("+5")
                                .padding()
                                .background(Color("gray"))
                                .clipShape(Circle())
                        }
                    }
                    .frame(height: 55)
                    
                }
                .padding(.bottom)
                
            }
            .padding(.horizontal)
            
            // MARK: - Bottom Section
            VStack {
                
                HStack {
                    Text("Активные проекты")
                        .font(.system(size: 23))
                    Spacer()
                    Text("Посмотреть все")
                        .font(.footnote)
                        .foregroundColor(Color.gray)
                    
                }
                .padding(.all, 20)
                
                
                // Active Projects List
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack(spacing: 15) {
                        Section {
                            ForEach(1...8, id: \.self) { value in
                                ProjectItemView(number: value)
                            }
                        }
                    }
                    .frame(maxHeight: .infinity)
                }
                .padding(.horizontal, 20)
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background(Color(.white))
            .cornerRadius(25)
            
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .background(Color("background"))
        .edgesIgnoringSafeArea(.bottom)
            
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
