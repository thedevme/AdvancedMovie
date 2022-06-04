import SwiftUI

struct TicketInformation: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            HStack {
                Text("LOGAN")
                    .custom(font: .bold, size: 40)
                
                Spacer()
                
                HStack(spacing: 20) {
                    HStack(spacing: 7) {
                        Image("icon-rotten-tomato")
                            .resizable()
                            .frame(width: 22, height: 23)
                        Text("96%")
                        
                    }
                    
                    HStack(spacing: 7) {
                        
                        Image("icon-popcorn")
                            .resizable()
                            .frame(width: 17, height: 23)
                        Text("79%")
                        
                    }
                }
                
                
            }
            
            HStack(spacing: 14){
                Text("2019")
                Text("PG-13")
                Text("2 HR 17 min")
            }
            Text("CMX CineBristro Hyde Park")
            Text("Today at 8:00 PM")
            
            TicketView()
            Spacer()
            
        }
        .custom(font: .regular, size: 18)
        
    }
}

struct TicketInformation_Previews: PreviewProvider {
    static var previews: some View {
        TicketInformation()
    }
}
