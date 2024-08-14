//
//  StudyView.swift
//  SwiftUIStudy
//
//  Created by 김지태 on 8/14/24.
//

import SwiftUI

struct StudyView: View {
    let title: String
    
    var body: some View {
        VStack(spacing: 0) {
            MainTitleBarView(title: self.title)
                .frame(height: 72)
                .frame(maxWidth: .infinity)
                .background(.red)
            NavigationStack {
                List {
                    NavigationLink("Red", destination: Text("Red"))
                    NavigationLink("Green", destination: Text("Green"))
                    NavigationLink("Blue", destination: Text("Blue"))
                }
            }
        }
    }
}
