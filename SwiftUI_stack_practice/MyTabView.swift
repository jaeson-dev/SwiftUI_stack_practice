//
//  MyTabView.swift
//  SwiftUI_stack_practice
//
//  Created by Jaeson.dev on 2022/03/01.
//

import SwiftUI

enum TabviewIndex {
    case one, two, three
}

struct MyTabView: View {
    
    init() {
           UITabBar.appearance().backgroundColor = UIColor.lightGray
       }
    
    var body: some View {
        TabView{    //Tabview 안에 보여줄 화면
            MyTabViewDetail(content: "1번", bgColor: Color.red)
                
            //보여줄 화면 아래에 .tabItem
                .tabItem{
                    Image(systemName: "airplane")
                        .font(.system(size: 30))
                    Text("Airplane")
                }
                .tag(0) // 이 탭 뷰에 대한 태그를 설정
           
            MyTabViewDetail(content: "2번", bgColor: Color.yellow)
                .tabItem{
                    Image(systemName: "flame.fill")
                    Text("Flame")
                    
                }
                .tag(1)
            MyTabViewDetail(content: "3번", bgColor: Color.blue)
                .tabItem{
                    Image(systemName: "doc.fill")
                    Text("Docs")
                    
                }
                .tag(2)
        }
        .accentColor(.yellow)
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
