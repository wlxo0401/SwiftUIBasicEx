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
        ZStack {
            
            // ZStack 안에서 Text를 중앙에 고정
            Text(self.title)
                 .font(.headline)
                 .frame(maxWidth: .infinity, alignment: .center)
            // HStack 안에 왼쪽과 오른쪽 버튼을 배치
            HStack(spacing: 0) {
                Button(action: {
                    self.dismiss()
                }) {
                    Image(systemName: "chevron.left")
                }
                
                .frame(maxHeight: 44)
                .frame(width: 72)
                
                // 중앙 띄우기
                Spacer()

                // 이 오른쪽 버튼은 빈 버튼이므로, 비어 있는 View 대신 실제로 필요한 경우 사용할 것
                Button(action: {}) {
                    EmptyView() // 오른쪽에 빈 뷰 추가
                }
                .frame(width: 72)
            }
        }
    }
}
