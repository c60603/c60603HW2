//
//  ContentView.swift
//  c60603HW2
//
//  Created by User04 on 2020/10/20.
//

import SwiftUI



struct Book{
    let name:String
    let intro:String
}

struct ContentView: View {
    var body: some View {
        TabView{
            OKView().tabItem { Image(systemName:"house.fill")
                Text("角色分類")
            }
            Naruto().tabItem { Image(systemName:"info.circle.fill")
                Text("熱門角色")
            }
        }
        
        
        
    }
}

struct OKView: View{
    let books=[
        Book(name:"assassin",intro:"刺客"),
        Book(name:"fighter",intro:"鬥士"),
        Book(name:"marksman",intro:"射手"),
        Book(name:"mage",intro:"法師"),
    ]
    var body:some View{
        NavigationView{
            ScrollView(.vertical){
                let columns=[GridItem(),GridItem()]
                LazyVGrid(columns:columns){
                    ForEach(books.indices){ (index) in
                        NavigationLink(destination:
                                        Image(books[index].name).resizable().scaledToFit().toolbar(content: {
                                            ToolbarItem(placement: .principal){
                                                HStack{
                                                    Text(books[index].intro).font(.largeTitle)
                                                }.offset(y:5)
                                            }
                                        })){
                            VStack{
                                Image(books[index].name).resizable().scaledToFill().frame(width:100,height:100).clipped()
                                Text(books[index].name)
                            }
                            .overlay(Image(systemName:"\(index+1).circle.fill")
                                        .font(.largeTitle),alignment: .topLeading).navigationTitle("LOL").navigationBarTitleDisplayMode(.inline)
                            
                        }
                        
                            
                    }
                    
                }
            }

        }
        
    }
}



struct Naruto: View{
    @State private var show=false
    
    var body:some View{
        
        NavigationView{
            VStack{
                NavigationLink(destination: Naruto3()) {
                    Text("Next Champion")
                      }.offset(x:80,y:0)
                NavigationLink(destination: Naruto1()) {
                    Text("故事")
                      }.offset(x:50,y:10)
                
                Button(show ? "劫" : "劫"){
                    self.show.toggle()
                }
                if show{
                    Image("zed").resizable().scaledToFit().transition(.opacity)
                }
            }.animation(.easeInOut(duration:3))
        }
        
        
        
     }
}

struct Naruto1: View{
    @State private var show=false
    
    var body:some View{
        
            VStack{
                NavigationLink(destination: Naruto2()) {
                    Text("連結")
                      }.offset(x:50,y:0)
       
            Button(show ? "故事" : "故事"){
                self.show.toggle()
            }
            if show{
                Text("劫的性格殘忍、無情，他是幽影軍團的領導者。他之所以創立這個組織，只為了將愛歐尼亞自古流傳的魔法和武術傳統軍事化，並藉此驅逐所有諾克薩斯的侵略者。戰爭期間，劫內心的絕望促使他碰觸禁忌，並解開了神秘的影子之力 － 一個相當邪惡且強大的靈魂魔法，稍有不慎，便會侵蝕世間萬物。如今劫已掌握了所有禁術，他將毫不留情地摧毀任何對愛歐尼亞會造成威脅，或是違抗他訂定的秩序之存在。").foregroundColor(.primary)
            }
          }.animation(.easeInOut(duration:3))
        
        
     }
}

struct Naruto2: View{
    @State private var show=false
    
    var body:some View{
        
            ZStack{
                Image("zed2").resizable().scaledToFill().frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Link("英雄聚光燈", destination: URL(string: "https://lol.garena.tw/game/champion/Zed")!).foregroundColor(.yellow)
                
            }
        
     }
}

struct Naruto3: View{
    @State private var show=false
    
    var body:some View{
        
        
            VStack{
                NavigationLink(destination: Naruto6()) {
                    Text("Next Champion")
                      }.offset(x:80,y:0)
                NavigationLink(destination: Naruto4()) {
                    Text("故事")
                      }.offset(x:50,y:10)
                
                Button(show ? "阿卡莉" : "阿卡莉"){
                    self.show.toggle()
                }
                if show{
                    Image("akali").resizable().scaledToFit().transition(.opacity)
                }
            }.animation(.easeInOut(duration:3))
        
        
        
        
     }
}

struct Naruto4: View{
    @State private var show=false
    
    var body:some View{
        
            VStack{
                NavigationLink(destination: Naruto5()) {
                    Text("連結")
                      }.offset(x:50,y:0)
       
            Button(show ? "故事" : "故事"){
                self.show.toggle()
            }
            if show{
                Text("拋棄了均衡組織與暗影之拳的頭銜，阿卡莉如今獨自出擊，準備成為人民所需的致命武器。雖然她依舊記得從慎師傅身上所學的全部，但她已誓言守護愛歐尼亞免受敵人侵擾，見一個就殺一個。阿卡莉的行動或許悄然無聲，但她傳達的訊息卻響亮清晰：孑然一身的刺客最令人畏懼。").foregroundColor(.primary)
            }
          }.animation(.easeInOut(duration:3))
        
        
     }
}

struct Naruto5: View{
    @State private var show=false
    
    var body:some View{
        
            ZStack{
                Image("akali2").resizable().scaledToFill().frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Link("英雄聚光燈", destination: URL(string: "https://lol.garena.tw/game/champion/Akali")!).foregroundColor(.yellow)
                
            }
        
     }
}

struct Naruto7: View{
    @State private var show=false
    
    var body:some View{
        
            VStack{
                NavigationLink(destination: Naruto8()) {
                    Text("連結")
                      }.offset(x:50,y:0)
       
            Button(show ? "故事" : "故事"){
                self.show.toggle()
            }
            if show{
                Text("李星是精通愛歐尼亞古代武術的大師。每當眼前出現挑戰，他體內蘊藏的龍魂之力就會發揮作用，並帶給他超凡的力量。雖然數年前他失去了視力，但這名武僧卻依舊致力於保護他的家鄉，消滅任何膽敢破壞愛歐尼亞平衡的不法之徒。那些低估他的人最後不是被他的拳頭擊倒，就是慘死於他的迴旋踢之下。").foregroundColor(.primary)
            }
          }.animation(.easeInOut(duration:3))
        
        
     }
}

struct Naruto6: View{
    @State private var show=false
    
    var body:some View{
        
        
            VStack{
                
                NavigationLink(destination: Naruto7()) {
                    Text("故事")
                      }.offset(x:50,y:10)
                
                Button(show ? "李星" : "李星"){
                    self.show.toggle()
                }
                if show{
                    Image("lee").resizable().scaledToFit().transition(.opacity)
                }
            }.animation(.easeInOut(duration:3))
        
        
        
        
     }
}

struct Naruto8: View{
    @State private var show=false
    
    var body:some View{
        
            ZStack{
                Image("lee2").resizable().scaledToFill().frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Link("英雄聚光燈", destination: URL(string: "https://lol.garena.tw/game/champion/LeeSin")!).foregroundColor(.yellow)
                
            }
        
     }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct OKView_Previews: PreviewProvider{
    static var previews: some View{
        Group {
            NavigationView{
                OKView()
            }
            NavigationView{
                OKView()
            }
        }
        
        
        
    }
}



struct Naruto_Previews: PreviewProvider{
    static var previews: some View{
        NavigationView{
            Naruto()
        }
    }
}



