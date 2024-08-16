//
//  PresentView.swift
//  SwiftUIBasicEx
//
//  Created by 김지태 on 8/14/24.
//

import SwiftUI

struct PresentView: View, Identifiable {
    let id = UUID() // 고유 식별자 추가
    
    var body: some View {
        VStack(spacing: 0) {
            SubTitleBarView(title: "Present")
                .frame(height: 72)
                .frame(maxWidth: .infinity)
                .background(.red)
            Text("안녕 나는 Present Child View라고해!")
                .onAppear() {
                    print("Hi")
                }
                .background(.blue)
            Spacer()
                .background(.gray)
        }
        .padding(0)
        .navigationBarBackButtonHidden()
    }
}

fileprivate struct PresentChildView: View {
    var body: some View {
        SubTitleBarView(title: "Present")
            .frame(height: 72)
            .frame(maxWidth: .infinity)
            .background(.red)
        
        Text("안녕 나는 Present Child View라고해!")
    }
}
