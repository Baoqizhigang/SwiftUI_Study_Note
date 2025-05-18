

import SwiftUI

struct ModalView_Sheet_2: View {
    
    @State private var showSheet_1 = false
    @State private var showSheet_2 = false
    
    var body: some View {
        VStack {
            Button("Show Modal View_Half The Page") {
                showSheet_1.toggle()
            }
            .sheet(isPresented: $showSheet_1){
                ModalView()
                    .presentationDragIndicator(.visible)
                    .presentationDetents([.medium])
            }
            .padding(.bottom, 200)
            
            Button("Show Modal View_Large_Long_Page") {
                showSheet_2.toggle()
            }
            .sheet(isPresented: $showSheet_2){
                TravelAppView()
                    .presentationDragIndicator(.visible)
                    .presentationDetents([.large])
            }
        }
    }
}



#Preview {
    ModalView_Sheet_2()
}
