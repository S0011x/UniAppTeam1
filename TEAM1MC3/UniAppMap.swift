//
//  SwiftUIView.swift
//  TEAM1MC3
//
//  Created by suha alrajhi on 18/07/1445 AH.
//
import SwiftUI

struct UniAppMap: View {
    
    @State private var flash = false
    @State private var isSaudiArabiaPopupVisible = false
    @State private var isKoreaPopupVisible = false
    @State private var isRussiaPopupVisible = false
    @State private var isIndiaPopupVisible = false
    @State private var isChinaPopupVisible = false
    @State private var isJapanPopupVisible = false
    
    var body: some View {
        ZStack {
            Image("AsiaMapFinal")
                .resizable()
                .frame(width: 380, height: 230)
            
            // Saudi Arabia button
            Button {
                isSaudiArabiaPopupVisible.toggle()
            } label: {
                Image("UniAppPin")
                    .resizable()
                    .padding(.top, 13.0)
                    .frame(width: 30, height: 50)
                    .opacity(flash ? 1.0 : 0.5)
            }
            .padding(.top, 75)
            .padding(.leading, -70)
            .onAppear {
                startFlashing()
            }
            .onDisappear {
                stopFlashing()
            }
            .sheet(isPresented: $isSaudiArabiaPopupVisible) {
                // Content for Saudi Arabia popup
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 595, height: 397)
                    .background(
                        ZStack{
                            Image("SaudiArabiaCard")
                                .resizable()
                                .frame(width: 330, height: 200)
                //the inside button
                  Button {
                               
                 } label: {
                   Image("saudiArabiaButton")
                         .resizable()
                         
                          .frame(width: 280, height: 180)
                        .opacity(flash ? 1.0 : 0.5)
                                  }
                       .padding(.top, 210)
                       .padding(.leading, 100)

                            
                            
                            
                        }
                    )
                    .cornerRadius(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .inset(by: 0.50)
                            .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 0.50)
                    )
                    .presentationBackground(.clear)
            }
            
            // Korea button
            Button {
                isKoreaPopupVisible.toggle()
            } label: {
                Image("UniAppPin")
                    .resizable()
                    .padding(.top, 13.0)
                    .frame(width: 30, height: 50)
                    .opacity(flash ? 1.0 : 0.5)
            }
            .padding(.top, -15)
            .padding(.leading, 276)
            .sheet(isPresented: $isKoreaPopupVisible) {
                // Content for Korea popup
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 595, height: 397)
                    .background(
                        ZStack{
                            Image("KoreaCard")
                                .resizable()
                                .frame(width: 330, height: 200)
                //the inside button
                  Button {
                               
                 } label: {
                   Image("koreaButton")
                   .resizable()
                   
                    .frame(width: 280, height: 140)
                  .opacity(flash ? 1.0 : 0.5)
                            }
                 .padding(.top, 185)
                 .padding(.leading, -10)

                            
                            
                            
                        }
                    )
                    .cornerRadius(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .inset(by: 0.50)
                            .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 0.50)
                    ).presentationBackground(.clear)
                
            }
            
            // Russia button
            Button {
                isRussiaPopupVisible.toggle()
            } label: {
                Image("UniAppPin")
                    .resizable()
                    .padding(.top, 13.0)
                    .frame(width: 30, height: 50)
                    .opacity(flash ? 1.0 : 0.5)
            }
            .padding(.top, -115)
            .padding(.leading, 40)
            .sheet(isPresented: $isRussiaPopupVisible) {
                // Content for Russia popup
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 595, height: 397)
                    .background(
                        ZStack{
                            Image("RussiaCard")
                                .resizable()
                                .frame(width: 330, height: 200)
                //the inside button
                  Button {
                               
                 } label: {
                   Image("RussiaButton")
                   .resizable()
                   
                    .frame(width: 290, height: 150)
                  .opacity(flash ? 1.0 : 0.5)
                            }
                 .padding(.top, 185)
                 .padding(.leading, -100)

                            
                            
                            
                        }
                    )
                    .cornerRadius(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .inset(by: 0.50)
                            .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 0.50)
                    ).presentationBackground(.clear)
            }
            
            
            
            // India button
            Button {
                // Toggle the visibility of the India popup
                isIndiaPopupVisible.toggle()
            } label: {
                Image("UniAppPin")
                    .resizable()
                    .padding(.top, 13.0)
                    .frame(width: 30, height: 50)
                    .opacity(flash ? 1.0 : 0.5)
            }
            .padding(.top,100)
            .padding(.leading,60)
            .sheet(isPresented: $isIndiaPopupVisible) {
                // Content for India popup
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 595, height: 397)
                    .background(
                        ZStack {
                            Image("IndiaCard")
                                .resizable()
                                .frame(width: 330, height: 200)
                            // Inside button for India popup
                            Button {
                                // Action for the button inside the India popup
                            } label: {
                                Image("IndiaButton")
                                    .resizable()
                                    
                                     .frame(width: 280, height: 140)
                                    .opacity(flash ? 1.0 : 0.5)
                            }
                            .padding(.top, 185)
                            .padding(.leading, -10)
                        }
                    )
                    .cornerRadius(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .inset(by: 0.50)
                            .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 0.50)
                    ).presentationBackground(.clear)
            }

            // China button
            Button {
                // Toggle the visibility of the China popup
                isChinaPopupVisible.toggle()
            } label: {
                Image("UniAppPin")
                    .resizable()
                    .padding(.top, 13.0)
                    .frame(width: 30, height: 50)
                    .opacity(flash ? 1.0 : 0.5)
            }
            .padding(.top,10)
            .padding(.leading,130)
            .sheet(isPresented: $isChinaPopupVisible) {
                // Content for China popup
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 595, height: 397)
                    .background(
                        ZStack {
                            Image("ChinaCard")
                                .resizable()
                                .frame(width: 330, height: 200)
                            // Inside button for China popup
                            Button {
                                // Action for the button inside the China popup
                            } label: {
                                Image("ChinaButton")
                                    .resizable()
                                    
                                     .frame(width: 280, height: 180)
                                   .opacity(flash ? 1.0 : 0.5)
                                             }
                                  .padding(.top, 210)
                                  .padding(.leading, 100)
                        }
                    )
                    .cornerRadius(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .inset(by: 0.50)
                            .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 0.50)
                    ).presentationBackground(.clear)
            }

            // Japan button
            Button {
                // Toggle the visibility of the Japan popup
                isJapanPopupVisible.toggle()
            } label: {
                Image("UniAppPin")
                    .resizable()
                    .padding(.top, 13.0)
                    .frame(width: 30, height: 50)
                    .opacity(flash ? 1.0 : 0.5)
            }
            .padding(.top,-10)
            .padding(.leading,330)
            .sheet(isPresented: $isJapanPopupVisible) {
                // Content for Japan popup
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 595, height: 397)
                    .background(
                        ZStack {
                            Image("JapanCard")
                                .resizable()
                                .frame(width: 330, height: 200)
                            // Inside button for Japan popup
                            Button {
                                // Action for the button inside the Japan popup
                            } label: {
                                Image("JapanButton")
                                    .resizable()
                                    
                                     .frame(width: 290, height: 150)
                                   .opacity(flash ? 1.0 : 0.5)
                                             }
                                  .padding(.top, 185)
                                  .padding(.leading, -100)
                        }
                    )
                    .cornerRadius(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .inset(by: 0.50)
                            .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 0.50)
                    ).presentationBackground(.clear)
            }

            
            
            
        }
    }
    
    private func startFlashing() {
        withAnimation(Animation.easeInOut(duration: 1.0).repeatForever(autoreverses: true)) {
            flash.toggle()
        }
    }
    
    private func stopFlashing() {
        flash = false
    }
}

#if DEBUG
struct UniAppMap_Previews: PreviewProvider {
    static var previews: some View {
        UniAppMap()
    }
}
#endif
