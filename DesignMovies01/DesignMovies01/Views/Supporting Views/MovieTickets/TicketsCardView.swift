import SwiftUI

struct TicketsCardView: View {
   
    var body: some View {
        ZStack(alignment: .top){
            
                
            VStack {
                HorizonalTitleRow()
                TopInfo()
            }
        }
        .background(RoundedRectangle(cornerRadius: 10)
            .fill(Color.baseSecondaryBackground))
        .frame(height: 220)
        
    }
}
struct TicketsCardView_Previews: PreviewProvider {
    static var previews: some View {
        TicketsCardView()
            
    }
}


// MARK: SUBVIEWS
struct HorizonalTitleRow: View {
    var body: some View {
        HStack {
            HStack(alignment: .center) {
                Text("TICKETS")
                    .custom(font: .medium, size: 14)
                    .padding(.leading, 5)
                
                
                Spacer()
                
                Text("PRICE")
                    .custom(font: .medium, size: 14)
                    .multilineTextAlignment(.trailing)
                   
                
                Spacer()
                
                Text("QUANTITY")
                    .custom(font: .medium, size: 14)
                    .padding(.trailing, 40)
                    .frame(alignment: .center)
            }
            .padding(.vertical, 7)
            .padding(.horizontal, 20)
            
        }
        .background(Color.baseAccent)
        .frame(height: 30)
        .cornerRadius(10, corners: [.topLeft, .topRight])
        .foregroundColor(.black)
        
        
      
    }
}
    struct TopInfo: View {
        @State var quantityOfTickets: Int = 0
        var body: some View {
            VStack {
                HStack {
                    Text("ADULT")
                        .custom(font: .regular, size: 18)
                        .foregroundColor(.black)
                        .padding(.leading, 20)
                    
                    
                    Spacer()
                    Text("$18.65")
                        .custom(font: .futuraBold, size: 18)
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    HStack(spacing: 15) {
                        Button(action: {
                            quantityOfTickets += 1
                        }, label: {
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 5).stroke(.white, lineWidth: 0.3)
                                    .frame(width: 26, height: 25)
                                
                                Image(systemName: "plus")
                                    .foregroundColor(.black)
                            }
                        })
                        
                        Text("\(quantityOfTickets)")
                            .custom(font: .futuraBold, size: 24)
                            .foregroundColor(.black)
                        
                        Button(action: {
                            quantityOfTickets -= 1
                        }, label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 5).stroke(.white, lineWidth: 0.3)
                                    .frame(width: 26, height: 25)
                                
                                Image(systemName: "minus")
                                    .foregroundColor(.black)
                            }
                        })
                    }
                    
                    
                }.padding(.trailing, 20)
                
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 0.7)
                    .foregroundColor(.black)
                
                HStack {
                    Text("CHILD")
                        .custom(font: .regular, size: 18)
                        .foregroundColor(.black)
                        .padding(.leading, 20)
                    
                    Spacer()
                    
                    Text("$7.25")
                        .custom(font: .futuraBold, size: 18)
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                            
                            HStack(spacing: 0){
                                Text("ADD").custom(font: .futuraBold, size: 14)
                                Text("TICKETS").custom(font: .regular, size: 14)
                            }
                            .foregroundColor(.black)
                            .padding(.horizontal, 17)
                            .padding(.vertical, 8)
                        
                    })
                    .background( RoundedRectangle(cornerRadius: 5)
                        .stroke(.white, lineWidth: 0.3)
                        .frame(width: 93, height: 33))
                }
                .padding(.trailing, 20)
                
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 0.7)
                    .foregroundColor(.black)
                HStack {
                    Text("SENIOR")
                        .custom(font: .regular, size: 18)
                        .foregroundColor(.black)
                        .padding(.leading, 20)
                    
                    Spacer()
                    
                    Text("$8.90")
                        .custom(font: .futuraBold, size: 18)
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        ZStack{
                          
                            
                            HStack(spacing: 0){
                                Text("ADD").custom(font: .futuraBold, size: 14)
                                Text("TICKETS").custom(font: .regular, size: 14)
                            }
                            .foregroundColor(.black)
                            .padding(.horizontal, 17)
                            .padding(.vertical, 8)
                        }
                    })
                    .background(RoundedRectangle(cornerRadius: 5)
                        .stroke(.white, lineWidth: 0.3)
                        .frame(width: 93, height: 33))
                }
                .padding(.trailing, 20)
            }
            .padding(.leading, 10)
            .padding(.trailing, 10)
            .padding(.bottom, 15)
        }
    }
