//
//  MoreView.swift
//  SwiftUIStudy
//
//  Created by 김지태 on 8/14/24.
//

import SwiftUI

struct MoreView: View {
    let title: String
    
    var body: some View {
        VStack {
            MainTitleBarView(title: self.title)
                .frame(height: 72)
                .frame(maxWidth: .infinity)
                .background(.red)
            Spacer()
        }
    }
}
