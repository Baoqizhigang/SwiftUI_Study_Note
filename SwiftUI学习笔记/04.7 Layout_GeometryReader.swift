
import Foundation
import SwiftUI


struct LayoutView7: View {
    var body: some View {
        
        VStack{
            GeometryReader{ geometry in
                Text("Hello, SwiftUI!")
                    .font(.largeTitle)
                    .padding()
                    .position( // 设置字符的中心点坐标
                        x: geometry.size.width - 300,
                        y: geometry.size.height - 300
                    )
            }
            
            GeometryReader{ geometry in
                ZStack {
                    VStack{ // 获取被分配的尺寸和位置
                        Text("X: \(geometry.frame(in: .global).origin.x) ")
                        Text("Y: \(geometry.frame(in: .global).origin.y) ")
                        Text("Width: \(geometry.size.width) ")
                        Text("Height: \(geometry.size.height) ")
                    }
                    .font(.largeTitle)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .background(Color.yellow)
                    
                    Text("Right Bottom!")
                        .font(.largeTitle)
                        .frame(width: 220, height: 60)
                        .background(Color.green)
                        .position( // 设置字符的中心点坐标
                            x: geometry.size.width - 90,
                            y: geometry.size.height - 60
                        )
                }
            }
            .ignoresSafeArea(edges: .all)
        }
    }
}

#Preview {
    LayoutView7()
}
