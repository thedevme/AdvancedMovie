import SwiftUI

struct DateView: View {
    var body: some View {
            
            ZStack(alignment: .bottom) {
                VStack(spacing: 0) {
                    VStack(spacing: 0) {
                        VStack(spacing: 0) {
                                Text("99")
                                    .custom(font: .bold, size: 55)
                                    .padding(.top)
                                    
                                Text("SEPTEMBER")
                                    .custom(font: .regular, size: 12)
                                    .offset(y: -15)
                                    
                            }
                        .frame(height: 70)
                        HStack(alignment: .center) {
                            
                                Text("THURSDAY")
                                .custom(font: .bold, size: 14)
                                .padding(.horizontal, 10)
                                .padding(.vertical, 10)
                            
                        }.background(.black)
                            .cornerRadius(10, corners: [.bottomRight, .bottomLeft])
                    }
                        }
            }
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.baseButtonBorder))
       
    }
}

struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        DateView()
            .preferredColorScheme(.dark)
    }
}

struct DayView: View {
    var body: some View {
        
            HStack {
                
                    Text("THURSDAY")
                    .custom(font: .bold, size: 14)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 10)
                    
               
            
                
                
            }
            
            .background(.black)
        .cornerRadius(10, corners: [.bottomRight, .bottomLeft])
        
        
            
        
    }
}
