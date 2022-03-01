//
//  MyGeometryReader.swift
//  SwiftUI_stack_practice
//
//  Created by Jaeson.dev on 2022/03/01.
//

import SwiftUI

struct MyGeometryReader: View {
    
    var body: some View {
        
            GeometryReader{ geometryReader in
                
                VStack(spacing: 0){
                    
                    Text("1")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: geometryReader.size.width / 3, height: geometryReader.size.height / 3)
                        .background(Color.red)
                    Text("2")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: geometryReader.size.width / 3, height: geometryReader.size.height / 3)
                        .background(Color.blue)
                    Text("3")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: geometryReader.size.width / 3, height: geometryReader.size.height / 3)

                        .background(Color.green)
//                    Text("4")
//                        .foregroundColor(.white)
//                        .font(.largeTitle)
//                        .fontWeight(.black)
//                        .frame(width: 100)
//                        .background(Color.purple)
                }
                .background(Color.yellow)
                .frame(width : geometryReader.size.width,
                                height : geometryReader.size.height,
                                alignment : .center)
            }
            .background(Color.yellow)
            .edgesIgnoringSafeArea(.all)
        
      
        
    }
}

struct MyGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReader()
    }
}
