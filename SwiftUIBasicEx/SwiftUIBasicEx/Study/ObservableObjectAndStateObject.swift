//
//  ObservableObjectAndStateObject.swift
//  SwiftUIStudy
//
//  Created by 김지태 on 8/13/24.
//

import SwiftUI

struct ObservableObjectAndStateObject: View, Identifiable {
    let id = UUID() // 고유 식별자 추가
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}
