//
//  DemoButton.swift
//  PlugUIKitDemo
//
//  Created by Admin on 8/12/21.
//
import SwiftUI
import PlugUIKit

struct DemoButton: View {
    let UISize = UIScreen.main.bounds
    
    var body: some View {
        VStack(alignment: .center, spacing: 5){
            VStack(alignment: .center){
                Text("Button").font(.title)
                Divider()
            }.padding(.bottom, 10)
            Group{
                Text("Small size")
                    .font(.headline)
                    .frame(width: UISize.width-40, height: 30, alignment: .leading)
                    .padding(.horizontal, 20)
                DemoButtonSmall()

                Text("Default size")
                    .font(.headline)
                    .frame(width: UISize.width-40, height: 30, alignment: .leading)
                    .padding(.horizontal, 20)
                DemoButtonDefault()

                Text("Large size")
                    .font(.headline)
                    .frame(width: UISize.width-40, height: 30, alignment: .leading)
                    .padding(.horizontal, 20)
                DemoButtonLarge()
                
                Text("Block Width")
                    .font(.headline)
                    .frame(width: UISize.width-40, height: 30, alignment: .leading)
                    .padding(.horizontal, 20)
                DemoButtonWidthBlock()

                
                Text("Full Width")
                    .font(.headline)
                    .frame(width: UISize.width-40, height: 30, alignment: .leading)
                    .padding(.horizontal, 20)
                DemoButtonFullWidth()
            }
            Group{
                Text("Button with icon")
                    .font(.headline)
                    .frame(width: UISize.width-40, height: 30, alignment: .leading)
                    .padding(.horizontal, 20)
                DemoButtonIcon()
            }
        }
        Spacer()
    }
}

struct DemoButtonSmall: View {
    var body: some View{
        HStack{
            PgUiButton(action: {
                print("Okay!")
            }, Size: .small){
                Text("Primary")
            }
            
            PgUiButton(action: {
                print("Okay!")
            }, ColorType: .secondary, Size: .small){
                Text("Secondary")
            }
            
            PgUiButton(action: {
                print("Okay!")
            },ColorType: .tertiary, Size: .small){
                Text("Tertiary")
            }
        }.padding(.vertical, 10)
    }
}


struct DemoButtonDefault: View {
    let UISize = UIScreen.main.bounds
    var body: some View{
        VStack{
            HStack{
                PgUiButton(action: {
                    print("Okay!")
                }, Style: .light){
                    Text("Light button")
                }
                PgUiButton(action: {
                    print("Okay!")
                }, ColorType: .light){
                    Text("Light color")
                }
            }.padding(.bottom, 10)
            HStack{
                PgUiButton(action: {
                    print("Okay!")
                }, ColorType: .tertiary, Style: .lightOutline){
                    Text("Outline button")
                }
                PgUiButton(action: {
                    print("Okay!")
                }, ColorType: .tertiary, Style: .lightFill){
                    Text("Fill button")
                }
            }.frame(width: UISize.width, height: 50, alignment: .center)
            .padding(.vertical, 10)
            .background(Color.init(hex: "#372e68"))
            
        }.padding(.vertical, 10)
    }
}


struct DemoButtonLarge: View {
    var body: some View{
        HStack{
            PgUiButton(action: {
                print("Okay!")
            }, ColorType: .success, Size: .large){
                Text("Success")
            }
            PgUiButton(action: {
                print("Okay!")
            }, ColorType: .warning, Size: .large){
                Text("Warning")
            }
            PgUiButton(action: {
                print("Okay!")
            }, ColorType: .danger, Size: .large){
                Text("Danger")
            }
        }.padding(.vertical, 10)
    }
}


struct DemoButtonWidthBlock: View {
    let UISize = UIScreen.main.bounds
    var body: some View{
        HStack{
            PgUiButton(action: {
                print("Okay!")
            }, ColorType: .secondary, Width: .block){
                Text("A block button")
            }
        }.padding(.vertical, 10)
        .frame(width: UISize.width-40, height: 60, alignment: .center)
    }
}


struct DemoButtonFullWidth: View {
    var body: some View{
        HStack{
            PgUiButton(action: {
                print("Okay!")
            }, ColorType: .dark, Width: .full){
                Text("A full-width button dark")
            }
        }.padding(.vertical, 10)
    }
}


struct DemoButtonIcon: View {
    var body: some View{
        HStack{
            
            PgUiButton(action: {
                print("Okay!")
            }, ColorType: .danger){
                HStack{
                    Image(systemName: "trash")
                    Text("Delete")
                }
            }
            
            PgUiButton(action: {
                print("Okay!")
            }, ColorType: .custom(BackgroundHex: "#00FFFFFF", TextHex: "#fff")){
                HStack{
                    Image("logo-gitlab")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(5)
                        .padding(.horizontal, 20)
                }
            }.background(LinearGradient(gradient: Gradient(colors: [PgUiColor.tertiary.Background, PgUiColor.secondary.Background]), startPoint: .bottomLeading, endPoint: .topTrailing))
            .cornerRadius(10)
                        
        }.padding(.vertical, 10)
    }
}
