//
//  MyBasicCard.swift
//  SwiftUI_stack_practice
//
//  Created by Jaeson.dev on 2022/02/27.
//

import SwiftUI

struct MyBasicCard: View {
    var body: some View{
        HStack(spacing: 20){
            Image(systemName: "flag.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
//                .frame(width: 100, height: 100)
            
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0)
                Text("HI")
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                
                Spacer().frame(height: 5)
                
                Text("HI")
                    .foregroundColor(.white)
                
            }
        }
        .padding(30)
        .background(.purple)
        .cornerRadius(20)
    }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
