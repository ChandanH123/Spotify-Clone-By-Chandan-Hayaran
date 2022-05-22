//
//  ContentView.swift
//  Spotify Clone By Chandan Hayaran
//
//  Created by Chandan on 16/03/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel: ViewModel
    
    // MARK: - HIDE TAB BAR
    init() {
        UITabBar.appearance().isHidden = true
    }


    let songNameArray:[String] = ["Karpur Gauram", "One More Light", "My Universe", "Every Second", "Alag Aasmaan", "When We Feel Young"]
    
    
    var body: some View {
        

        ZStack {
            TabView(selection: $viewModel.currentTab) {
                    HomeView()
                    .tag(Tab.Home)
                
                    SearchView(searchInput: "")
                    .tag(Tab.Search)
                
                    HomeView()
                    .tag(Tab.Library)
                
                    HomeView()
                    .tag(Tab.Profile)
            }
            .overlay(
                HStack
                    {
                        TabButton(Tab: .Home)
                        TabButton(Tab: .Search)
                        TabButton(Tab: .Library)
                        TabButton(Tab: .Profile)
                    }.background(.black)
                    
                , alignment: .bottom
                
                
                
            )
            
            
            CurrentlyPlayingBar(imageName: "1-song", songName:songNameArray[0])
                .offset(y: 320)
                .padding(.horizontal, 8)
                
        }
    }
    
    @ViewBuilder
    func TabButton(Tab: Tab)-> some View {
        Button {
            withAnimation(.spring()){
               viewModel.currentTab = Tab
            }
        } label: {
            Image(systemName: Tab.rawValue)
                .aspectRatio(contentMode: .fit)
                .font(.system(size: 25))
                .foregroundColor(viewModel.currentTab == Tab ? Color.white : Color.gray)
                .frame(maxWidth: .infinity)
                .padding()
            
        }
    }
    
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .environmentObject(ViewModel())
    }
}
