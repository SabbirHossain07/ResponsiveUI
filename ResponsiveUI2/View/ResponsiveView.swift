//
//  ResponsiveView.swift
//  ResponsiveUI
//
//  Created by Sopnil Sohan on 5/6/22.
//

import SwiftUI

//MARK: Custom view which will return the properties of the view
struct ResponsiveView<Content: View>: View {
    //Returning properties
    var content: (Properties)->Content
    
    var body: some View {
        GeometryReader { proxy in
            let size = proxy.size
            let isLandscape = (size.width > size.height)
            let isiPad = UIDevice.current.userInterfaceIdiom == .pad
            
            content(Properties(isLandscape: isLandscape, isiPad: isiPad, isSplit: isSplit(), size: size))
                .frame(width: size.width, height: size.height, alignment: .center)
                .onAppear {
                    //Updating fraction on initial
                    updatingFraction(fraction: isLandscape && !isSplit() ? 0.3 : 0.5)
                }
                .onChange(of: isSplit(), perform: { newValue in
                    updatingFraction(fraction: isLandscape && isSplit() ? 0.3 : 0.5)
                })
                .onChange(of: isLandscape) { newValue in
                    updatingFraction(fraction: newValue && isSplit() ? 0.3 : 0.5)
                }
        }
    }
    
    //solving UI for spilt apps
    func isSplit()->Bool{
        //Easy way to find
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return false
        }
        return screen.windows.first?.frame.size != UIScreen.main.bounds.size
    }
    
    func updatingFraction(fraction: Double) {
        NotificationCenter.default.post(name: NSNotification.Name("UPDATEFRACTION"), object: nil, userInfo: ["fraction": fraction])
    }
}

struct Properties {
    var isLandscape: Bool
    var isiPad: Bool
    var isSplit: Bool
    var size: CGSize
}
