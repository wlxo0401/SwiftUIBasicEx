//
//  PresentView.swift
//  SwiftUIBasicEx
//
//  Created by 김지태 on 8/14/24.
//

import SwiftUI

struct PresentView: View {
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}

fileprivate struct PresentChildView: View {
    var body: some View {
        Text("안녕 나는 Present Child View라고해!")
    }
}
