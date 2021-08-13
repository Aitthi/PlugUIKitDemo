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
        }
        Spacer()
    }
}

struct DemoButtonSmall: View {
    var body: some View{
        HStack{
            
            PgUiButton(Label: "Primary", Size: .small){
                print("Okay!")
            }
            
            PgUiButton(Label: "Secondary", ColorType: .secondary, Size: .small){
                print("Okay!")
            }
            
            PgUiButton(Label: "Tertiary", ColorType: .tertiary, Size: .small){
                print("Okay!")
            }
        }.padding(.vertical, 10)
    }
}


struct DemoButtonDefault: View {
    let UISize = UIScreen.main.bounds
    var body: some View{
        VStack{
            HStack{
                PgUiButton(Label: "Light button", Style: .light){
                    print("Okay!")
                }
                PgUiButton(Label: "Light color", ColorType: .light){
                    print("Okay!")
                }
            }.padding(.bottom, 10)
            HStack{
                PgUiButton(Label: "Light button", ColorType: .tertiary, Style: .lightOutline){
                    print("Okay!")
                }
                PgUiButton(Label: "Default button", ColorType: .tertiary, Style: .lightFill){
                    print("Okay!")
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
            PgUiButton(Label: "Success", ColorType: .success, Size: .large){
                print("Okay!")
            }
            PgUiButton(Label: "Warning", ColorType: .warning, Size: .large){
                print("Okay!")
            }
            PgUiButton(Label: "Danger", ColorType: .danger, Size: .large){
                print("Okay!")
            }
        }.padding(.vertical, 10)
    }
}


struct DemoButtonWidthBlock: View {
    let UISize = UIScreen.main.bounds
    var body: some View{
        HStack{
            PgUiButton(Label: "A block button light", ColorType: .secondary, Width: .block){
                print("Okay!")
            }
        }.padding(.vertical, 10)
        .frame(width: UISize.width-40, height: 60, alignment: .center)
    }
}


struct DemoButtonFullWidth: View {
    var body: some View{
        HStack{
            PgUiButton(Label: "A full-width button dark", ColorType: .dark, Width: .full){
                print("Okay!")
            }
        }.padding(.vertical, 10)
    }
}
