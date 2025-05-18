
import PhotosUI
import SwiftUI
import UIKit


struct PhotoPickerDemoView1: View {
    
    @State private var selectedItem: PhotosPickerItem?
    @State private var selectedImage: UIImage?
    
    var body: some View {
        
        VStack {
            // ImagePicker View
            PhotosPicker(selection: $selectedItem, matching: .images) {
                Text("Click to choose an image")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue.opacity(0.7))
                    .cornerRadius(10)
            }
            .onChange(of: selectedItem) { oldItem, newItem in
                guard let newItem = newItem else { return }
                Task {
                    // Get image from PhotosPickerItem
                    if let data = try? await
                        newItem.loadTransferable(type: Data.self) {
                        selectedImage = UIImage(data: data) // convert Data to UIImage
                    }
                }
            }
            .frame(height: 200)
            
            // Show the selected image
            if let image = selectedImage {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(20)
                    .padding()
            } else {
                Text ("Picture not selected")
                    .font(.headline)
                    .foregroundColor(.gray)
            }
        }
        .padding()
    }
}

#Preview {
    PhotoPickerDemoView1()
}



