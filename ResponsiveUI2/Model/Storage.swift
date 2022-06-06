//
//  Storage.swift
//  ResponsiveUI2
//
//  Created by Sopnil Sohan on 6/6/22.
//

import SwiftUI

//MARK: Storage Model and Sample Data
struct Storage: Identifiable {
    var id = UUID().uuidString
    var title: String
    var icone: String
    var fileCount: String
    var maxSize: String
    var progress: CGFloat
    var progressColor: Color
}

var sampleStorage: [Storage] = [
    Storage(title: "Documents", icone: "DocumentIcon", fileCount: "1138", maxSize: "10GB", progress: 0.4, progressColor: Color.blue),
    Storage(title: "Google Drive", icone: "Google Drive", fileCount: "1500", maxSize: "15GB", progress: 0.5, progressColor: Color.yellow),
    Storage(title: "One Drive", icone: "One Drive", fileCount: "190", maxSize: "5GB", progress: 0.1, progressColor: Color.cyan),
    Storage(title: "Drop Box", icone: "Drop Box", fileCount: "90", maxSize: "2GB", progress: 0.2, progressColor: Color.red)
]
