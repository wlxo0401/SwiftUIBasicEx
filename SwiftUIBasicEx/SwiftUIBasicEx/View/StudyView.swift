//
//  StudyView.swift
//  SwiftUIStudy
//
//  Created by 김지태 on 8/14/24.
//

import SwiftUI

struct StudyView: View {
    let title: String

    let views: [AnyView] = [AnyView(PresentView()), AnyView(ObservableObjectAndStateObject())]
    
    var body: some View {
        
        NavigationStack {
            VStack(spacing: 0) {
                
                MainTitleBarView(title: self.title)
                    .frame(height: 72)
                    .frame(maxWidth: .infinity)
                    .background(.red)
                ScrollView {
                    
                    NavigationLink(destination: PresentView()) {
                        // List Row 에 해당하는 View
                        HStack {
                            Text("1. PresentView")
                                .font(.pretendard(.bold, size: 17))
                            Image(systemName: "rectangle.portrait.and.arrow.right")
                        }
                        .frame(height: 64)
                        .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(CustomButtonStyle())
                }
            }
        }
    }
}
struct NoEffectButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .opacity(configuration.isPressed ? 1.0 : 1.0)
    }
}

struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(configuration.isPressed ? Color.blue : Color.green)
            .foregroundColor(configuration.isPressed ? Color.black : Color.black)
            .cornerRadius(10)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0) // 눌렀을 때 약간 작아지는 효과
            .animation(.easeInOut, value: configuration.isPressed)
    }
}
