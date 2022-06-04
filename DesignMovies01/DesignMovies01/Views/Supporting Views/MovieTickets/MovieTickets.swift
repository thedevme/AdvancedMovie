import SwiftUI

struct MovieTickets: View {
    let screen = UIScreen.main.bounds
    var body: some View {
        VStack(spacing: 0) {
        ScrollView {
          
            VStack {
                HeaderView()
                    //TicketInformation()
                    .padding(.leading, 11)
                    .padding(.trailing, 10)
                Spacer()
            }
                
            }
            .edgesIgnoringSafeArea(.all)
        
            Spacer()
            TicketTotal()
            

        }
        }
    }


struct MovieTickets_Previews: PreviewProvider {
    static var previews: some View {
        MovieTickets()
    }
}


