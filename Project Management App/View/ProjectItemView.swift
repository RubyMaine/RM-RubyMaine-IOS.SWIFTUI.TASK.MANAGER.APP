//
//  ProjectItemView.swift
//  Project Management App
//
//  Created by RubyMaine on 14/08/2023.
//

import SwiftUI

struct ProjectItemView: View {
    
    let number:Int
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Номер \(number)")
                    .font(.footnote)
                    .foregroundColor(Color.gray)
                
                Spacer()
                
                Text("16:00")
                    .font(.footnote)
                    .foregroundColor(Color.gray)
            }
            .padding(.horizontal)
            .padding(.top)
            .padding(.bottom, 5)
            
            Text("Блог и социальные посты")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .padding(.leading)
            
            Spacer(minLength: 20)
            
            Label {
                Text("Крайний срок сегодня")
            } icon: {
                Image(systemName: "info.circle")
            }
            .padding(.leading)
            
            Spacer()
            
        }
        .frame(height: 150)
        .cornerRadius(15)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(.gray, lineWidth: 1)
        )
    }
}

struct ProjectItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectItemView(number: 20)
            .previewLayout(.sizeThatFits)
    }
}
