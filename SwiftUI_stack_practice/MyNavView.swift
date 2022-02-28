//
//  MyNavView.swift
//  SwiftUI_stack_practice
//
//  Created by Jaeson.dev on 2022/02/28.
//

import SwiftUI

struct MyNavView: View {
    var body: some View {
        NavigationView {
            VStack{
//            Text("Hello, World!")
//                .navigationBarTitle("안녕하세요", displayMode: .inline)
            MyList()
                
            }
        }
    }
}

struct MyNavView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavView()
    }
}
