import SwiftUI

struct TimeSlotView: View {
    var body: some View {
        HStack {
            HStack {
                Text("10:30")
                    .custom(font: .bold, size: 24)
                    .padding(.leading, 4)
                
                
            }
           
            VStack(spacing: 0) {
                Text("A")
                   
                Text("M")
                    
            }
            .custom(font: .futuraBold, size: 14)
            .background(.gray)
            .cornerRadius(5, corners: [.topRight, .bottomRight])
        }
        .background(RoundedRectangle(cornerRadius: 5).fill(.black))
        .foregroundColor(Color.white)
        .cornerRadius(5, corners: [.topRight, .bottomRight])
        
        
            
        
    }
}

struct TimeSlotView_Previews: PreviewProvider {
    static var previews: some View {
        TimeSlotView()
    }
}
