//
//  SubTitleBarView.swift
//  SwiftUIBasicEx
//
//  Created by KimJitae on 8/14/24.
//

import SwiftUI

struct SubTitleBarView: View {
    @Environment(\.dismiss) var dismiss
    
    let title: String
    
    var body: some View {
        Button("Tap Me") {
            self.dismiss()
        }
        Text(self.title)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            .background(.green)
            .font(.pretendard(.semiBold, size: 24))
            
    }
}
