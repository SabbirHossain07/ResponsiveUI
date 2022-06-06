//
//  StorageDetail.swift
//  ResponsiveUI2
//
//  Created by Sopnil Sohan on 6/6/22.
//

import SwiftUI

//MARK: Storage Detail and Sample Data
struct StorageDetail: Identifiable {
    var id: String = UUID().uuidString
    var type: String
    var icone: String
    var files: String
    var size: String
    var progress: CGFloat
    var  progressColor: Color
}

var sampleStorageDetails: [StorageDetail] = [
    StorageDetail(type: "Document Files", icone: "DocumentIcon", files: "129", size: "1.38GB", progress: 0.3, progressColor: Color.blue),
    StorageDetail(type: "Media Files", icone: "Media", files: "98", size: "2.3GB", progress: 0.2, progressColor: Color.yellow),
    StorageDetail(type: "Others Files", icone: "Folder", files: "25", size: "1.3GB", progress: 0.2, progressColor: Color.cyan),
    StorageDetail(type: "Unknown", icone: "Unknown", files: "220", size: "3.3GB", progress: 0.1, progressColor: Color.red),
]
