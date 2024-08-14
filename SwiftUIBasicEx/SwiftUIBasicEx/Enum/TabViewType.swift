//
//  TabType.swift
//  SwiftUIBasicEx
//
//  Created by 김지태 on 8/14/24.
//

import SwiftUI

enum TabViewType {
    case home
    case study
    case more
    
    @ViewBuilder
    var tabView: some View {
        self.view.tabItem {
            self.itemImage
            self.itemTitle
        }
    }
    
    private var view: some View {
        switch self {
        case .home:
            return AnyView(HomeView(title: self.title))
        case .study:
            return AnyView(StudyView(title: self.title))
        case .more:
            return AnyView(MoreView(title: self.title))
        }
    }
    
    var title: String {
        switch self {
        case .home:
            return "홈"
        case .study:
            return "공부"
        case .more:
            return "더보기"
        }
    }
    
    private var itemTitle: Text {
        switch self {
        case .home:
            return Text("Home")
        case .study:
            return Text("Study")
        case .more:
            return Text("More")
        }
    }
    
    private var itemImage: Image {
        switch self {
        case .home:
            return Image(systemName: "house.fill")
        case .study:
            return Image(systemName: "square.and.pencil")
        case .more:
            return Image(systemName: "ellipsis")
        }
    }
}
