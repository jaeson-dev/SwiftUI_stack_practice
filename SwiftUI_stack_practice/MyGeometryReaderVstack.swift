//
//  MyGeometryReaderVstack.swift
//  SwiftUI_stack_practice
//
//  Created by Jaeson.dev on 2022/03/01.
//

import SwiftUI

enum Index {
    case one, two, three, free
}

struct MyGeometryReaderVstack: View {
    
    @State var index : Index = .free     // index라는 변수를 @state 키워드를 통해 설정. 타입은 Index, 그리고 초기값은 .one
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing:0){
                
                Button(action: {    //버튼이 클릭 되었을 때 로직!
                    withAnimation{ //버튼이 타는 부분 안에 withAnimation 클로져로 입력
                        self.index = .one
                    }
                    
                }){ //버튼의 생김새!
                    Text("1")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: self.index == .one ? 50 : 100, height: geometry.size.height / 3)
                        .background(Color.red)
                }
                
                Button(action: {    //버튼이 클릭 되었을 때 로직!
                    withAnimation{
                        self.index = .two
                    }
                }){ //버튼의 생김새!
                    Text("2")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: self.index == .two ? 50 : 100, height: geometry.size.height / 3)
                        .background(Color.blue)
                }
                
                Button(action: {    //버튼이 클릭 되었을 때 로직!
                    withAnimation{
                        self.index = .three
                    }
                }){ //버튼의 생김새!
                    Text("3")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: self.index == .three ? 50 : 100, height: geometry.size.height / 3)
                        .background(Color.green)
                }
            }
//            .background(Color.purple)
            .frame(width : geometry.size.width,
                            height : geometry.size.height,
                            alignment : .center)
        }
        .background(.yellow)
        .edgesIgnoringSafeArea(.all)
    }
}

struct MyGeometryReaderVstack_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReaderVstack()
    }
}
