//
//  MyNavView.swift
//  SwiftUI_stack_practice
//
//  Created by Jaeson.dev on 2022/02/28.
//

import SwiftUI

struct MyNavView: View {
    
    @State var abc = 10
    
    var body: some View {
        NavigationView {

            MyList()
                .navigationBarTitle("안녕하세요")
                .navigationBarItems(leading: Button(action:{
                    self.abc = abc + 10
                }){
                    Text("Button\(abc)")
                }
                                    , trailing:
                                        NavigationLink(destination: Text("넘어온 화면 입니다.\(abc)")){
                                            Image(systemName: "bookmark.fill")
                        .font(.system(size: 25))
                        .foregroundColor(.black)
                                        }
                )
       
        }
    }
}

struct MyNavView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavView()
    }
}
