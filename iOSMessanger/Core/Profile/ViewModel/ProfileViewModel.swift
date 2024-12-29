//
//  ProfileViewModel.swift
//  iOSMessanger
//
//  Created by Wasir on 29/12/24.
//

import Foundation

import SwiftUI
import PhotosUI
class ProfileViewModel:ObservableObject{
    @Published var selectedItem: PhotosPickerItem?{
        didSet{Task {try await loadImage()} }
    }
    
    @Published var profileImage: UIImage?
    
    func loadImage() async throws {
        guard let item = selectedItem else {return}
        guard let imageData = try await item.loadTransferable(type: Data.self) else {return}
        guard let uiImage = UIImage(data: imageData) else {return}
        self.profileImage = uiImage
    }
    
}
