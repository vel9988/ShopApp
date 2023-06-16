//
//  ProfileViewModel.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 13.06.2023.
//

import Combine
import SwiftUI
import PhotosUI

final class ProfileViewModel: ObservableObject {
    
    @Published var selectedItem: PhotosPickerItem?
    @Published var userName: String = "First Name Last name"
    
    
    
}
