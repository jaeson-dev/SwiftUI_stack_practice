//
//  ContentView.swift
//  SwiftUI_stack_practice
//
//  Created by Jaeson.dev on 2022/02/27.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNavigationBarHidden: Bool = false
    
    var body: some View {
        
        NavigationView {
            ZStack(alignment: .bottomTrailing){
                
                VStack(alignment: .leading, spacing: 5){
                    
                    HStack{
                        NavigationLink(destination: MyList(isNavigationBarHidden: self.$isNavigationBarHidden)){
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }
                        
                        Spacer()
                        
                        NavigationLink(destination: MyProfileView(isNavigationBarHidden: self.$isNavigationBarHidden)){
                        
                        Image(systemName: "person.crop.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                        }
                    }
                    
                    Text("정대리 할 일 목록")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                    
                    Spacer()
                    
                    ScrollView(showsIndicators: false){
                        VStack{
                            MyProjectCard()
                            MyBasicCard()
                            MyCard(icon: "tray.fill", title: "집청소", start: "12:30PM", end: "15:50PM", bgColor: .green)
                            MyCard(icon: "tray.fill", title: "집청소", start: "12:30PM", end: "15:50PM", bgColor: .yellow)
                            MyCard(icon: "tray.fill", title: "집청소", start: "12:30PM", end: "15:50PM", bgColor: .gray)
                            MyCard(icon: "tray.fill", title: "집청소", start: "12:30PM", end: "15:50PM", bgColor: .red)
                        }
                         
                    }
                }
                .padding(.vertical, 20)
                .padding(.horizontal, 20)
                
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 60, height: 60)
                    .overlay(
                        Image(systemName: "plus")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                    )
                    .padding(10)
                    .shadow(radius: 20)
            } // Zstack
            
            .navigationBarTitle("뒤로가기")
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear{
                self.isNavigationBarHidden = true
            }
        } // navigationview
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
