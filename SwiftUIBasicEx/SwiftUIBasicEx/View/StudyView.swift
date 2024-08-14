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
                        .navigationBarBackButtonHidden()
                    NavigationLink("Green", destination: Text("Green"))
                    NavigationLink("Blue", destination: Text("Blue"))
                }
                .navigationDestination(for: Color.self, destination: { color in
                    TestView()
                })
                .navigationTitle("Colors")
            }
            .navigationBarBackButtonHidden()
        }
    }
}

struct TestView: View {
    var body: some View {
        Text("안녕하세요.")
    }
}


struct ColorDetail: View {

    var color: Color
    
    var body: some View {
            Text("\(self.color.description)")
    }
}
