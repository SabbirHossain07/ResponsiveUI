//
//  File.swift
//  ResponsiveUI2
//
//  Created by Sopnil Sohan on 6/6/22.
//

import SwiftUI

//MARK: file Model and sample Data
struct File: Identifiable {
    var id: String = UUID().uuidString
    var fileType: String
    var fileIcon: String
    var fileData: String
    var fileSize: String
}

var sampleFile: [File] = [
    File(fileType: "XD File", fileIcon: "XD", fileData: "01-06-22", fileSize: "10MB"),
    File(fileType: "Figma File", fileIcon: "Figma", fileData: "02-06-22", fileSize: "1MB"),
    File(fileType: "Documents", fileIcon: "Docs", fileData: "03-06-22", fileSize: "5MB"),
    File(fileType: "Sound File", fileIcon: "Sound", fileData: "04-06-22", fileSize: "12MB"),
    File(fileType: "Media File", fileIcon: "Media", fileData: "05-06-22", fileSize: "9MB"),
    File(fileType: "Excel File", fileIcon: "Excel", fileData: "05-06-22", fileSize: "1MB"),
    File(fileType: "PDF File", fileIcon: "PDF", fileData: "05-06-22", fileSize: "2MB")
    
]
