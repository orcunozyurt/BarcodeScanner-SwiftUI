//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Orcun Ozyurt on 03.10.23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(
        title: "Invalid Device",
        message: "Something is wrong with camera device",
        dismissButton: .default(Text("OK")))
    
    static let invalidScannedValue = AlertItem(
        title: "Invalid Barcode",
        message: "Scanned Value is not valid. Only EAN-8 or EAN-13.",
        dismissButton: .default(Text("OK")))
}
