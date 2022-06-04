import SwiftUI

struct TicketTotal: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text("SUBTOTAL")
                Spacer()
                Text("$37.30")
            }
            .custom(font: .bold, size: 42)
            
            Button(action: {
                //
            }, label: {
                Spacer()
                HStack(spacing: 6) {
                    
                    Text("PICK")
                        .custom(font: .bold, size: 32)
                    Text("SEATS")
                        .custom(font: .regular, size: 32)
                }
                .foregroundColor(.black)
                Spacer()
                
            })
            .background(RoundedRectangle(cornerRadius: 5)
                .fill(Color.baseSecondaryBackground)
                .frame(height: 45))
            .padding(.horizontal, 0.5)
            
            HStack(spacing: 2) {
                Rectangle().fill(Color.baseIndicatorSelected).frame( height: 4)
                Rectangle().fill(Color.black).frame( height: 4)
                Rectangle().fill(Color.black).frame( height: 4)
                Rectangle().fill(Color.black).frame( height: 4)
            }
            .padding(.top, 22)
        }
        .padding(.horizontal, 10)
    }
}
