import SwiftUI

struct TicketView: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading, spacing: 0) {
                HStack(spacing: 0) {
                    Text("TICKETS")
                        .custom(font: .futuraBold, size: 30)
                        .foregroundColor(.black)
                        
                    Spacer()
                }
                    TicketsCardView()
            }
        }
            .padding(.top, 9)
    }
}
struct TicketsBackground_Previews: PreviewProvider {
    static var previews: some View {
        TicketView()
            
    }
}
