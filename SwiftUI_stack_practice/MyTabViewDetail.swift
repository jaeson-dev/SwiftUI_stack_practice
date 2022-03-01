//
//  MyTabViewDetail.swift
//  SwiftUI_stack_practice
//
//  Created by Jaeson.dev on 2022/03/01.
//

import SwiftUI

struct MyTabViewDetail: View {
    
    var content : String
    var bgColor : Color
    
    var body: some View {
    
        ZStack(alignment: .center){
            
            bgColor.edgesIgnoringSafeArea(.all)
                        
            Text(content)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.white)
        }
    }
}

struct MyTabViewDetail_Previews: PreviewProvider {
    static var previews: some View {
        MyTabViewDetail(content: "Hi", bgColor: Color.red)
    }
}
