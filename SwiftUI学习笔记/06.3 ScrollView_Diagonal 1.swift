
import Foundation
import SwiftUI


struct ScrowllView3: View {
    
    
    var body: some View {
        ScrollView([.horizontal, .vertical]) {
            VStack {
                ForEach(1 ... 20, id: \.self) {row in
                    HStack {
                        ForEach(1 ... 20, id: \.self) { column in
                            Text("\(row),\(column)")
                                .frame(width: 100, height: 100)
                                .background(Color.orange)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                        }
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ScrowllView3()
}



