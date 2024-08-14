//
//  MainTitleBarView.swift
//  SwiftUIBasicEx
//
//  Created by 김지태 on 8/14/24.
//

import SwiftUI

struct MainTitleBarView: View {
    let title: String
    
    var body: some View {
        Text(self.title)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            .padding(.leading, 28)
            .padding(.bottom, 10)
            .background(.blue)
            .font(.pretendard(.bold, size: 28))
            
    }
}
