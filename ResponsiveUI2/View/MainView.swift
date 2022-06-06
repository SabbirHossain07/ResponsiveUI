//
//  MainView.swift
//  ResponsiveUI2
//
//  Created by Sopnil Sohan on 5/6/22.
//

import SwiftUI

struct MainView: View {
    //current Tab
    @State var currentTab: Tab = .dashboard
    @State var showSideBar: Bool = false
    
    var body: some View {
        ResponsiveView { props in
            HStack(spacing: 0) {
                //MARK: SideBAr
                //MARK: Displaying only iPad and not on Splite Mode
                if props.isiPad && props.isLandscape {
                    SideBar(props: props, currentTab: $currentTab)
                }
                
                Dashboard(props: props, showSideBar: $showSideBar)
            }
            .overlay {
                ZStack(alignment: .leading) {
                    Color.black
                        .opacity(showSideBar ? 0.35 : 0)
                        .ignoresSafeArea()
                        .onTapGesture {
                            withAnimation(.easeInOut) {
                                showSideBar = false
                            }
                        }
                    if showSideBar {
                        SideBar(props: props, currentTab: $currentTab)
                            .transition(.move(edge: .leading))
                    }
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
