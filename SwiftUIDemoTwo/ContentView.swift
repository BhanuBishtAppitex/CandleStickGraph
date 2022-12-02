//
//  ContentView.swift
//  SwiftUIDemoTwo
//
//  Created by wOOx Technology on 01/12/22.
//

import SwiftUI

let hCount: [Int] = [3,2,1]
let vCount: [Int] = [10,9,8,7,6,5,4,3,2,1]

struct ContentView: View {
    
    var frameWidth: CGFloat
    var frameHeight: CGFloat
    var leftLabelSize: CGFloat = 40
    var rightLabelSize: CGFloat = 40
    var topLabelSize: CGFloat = 40
    var bottomLabelSize: CGFloat = 40
    
    var body: some View {
        ZStack {
            Color("Black")
                //.ignoresSafeArea()
            ZStack {
                VStack {
                    // top label
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.orange)
                        .frame(height: topLabelSize)
                        .frame(width: frameWidth-topLabelSize*2)
                        .overlay {
                            HStack(alignment: .center) {
                                ForEach(0..<3) {count in
                                    Spacer()
                                    Text("\(count)")
                                        .font(.system(size: 20))
                                        .foregroundColor(.white)
                                    Spacer()
                                }
                            }
                        }
                    // left and right label, main chart view
                    HStack {
                        // left label
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.blue)
                            .frame(width: 40)
                            .overlay {
                                VStack {
                                    ForEach(vCount, id:\.self) {count in
                                        Spacer()
                                        Text("\(count)")
                                            .font(.system(size: 20))
                                            .foregroundColor(.white)
                                        Spacer()
                                    }
                                }
                            }
                        
                        // main Chart view
                        MainGraphView(chartWidth: frameWidth-(leftLabelSize+rightLabelSize), chartHeight: frameHeight-(topLabelSize+bottomLabelSize))
                            
                        // right label
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.blue)
                            .frame(width: 40)
                            .overlay {
                                VStack {
                                    ForEach(vCount, id:\.self) {count in
                                        Spacer()
                                        Text("\(count)")
                                            .font(.system(size: 20))
                                            .foregroundColor(.white)
                                        Spacer()
                                    }
                                }
                            }
                    }
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.orange)
                        .frame(height: bottomLabelSize)
                        .frame(width: frameWidth-bottomLabelSize*2)
                        .overlay(alignment: .center) {
                            HStack {
                                ForEach(1..<4) {count in
                                    Spacer()
                                    Text("\(count)")
                                        .font(.system(size: 20))
                                        .foregroundColor(.white)
                                    Spacer()
                                }
                            }
                        }
                }
            }
        }.clipped()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //ContentView(frameWidth: UIScreen.main.bounds.width, frameHeight: UIScreen.main.bounds.height)
        //ChartView(chartHeight: UIScreen.main.bounds.height-40, chartWidth: UIScreen.main.bounds.width-40,shadowH: Data.dataSetMain[0].shadowH, shadowL: Data.dataSetMain[0].shadowL, open: Data.dataSetMain[0].open, close: Data.dataSetMain[0].close)
        MainGraphView(chartWidth: UIScreen.main.bounds.width-(40+40), chartHeight: UIScreen.main.bounds.height-(40+40))
    }
}


struct MainGraphView: View {
    var chartWidth: CGFloat
    var chartHeight: CGFloat
    let data = Data.dataSetMain
    let dataTwo = Data.dataSet
    var body: some View {
        ZStack(alignment: .center) {
            //MARK: - Main BackGroundView
            //Color("Black")
            ZStack {
                HStack {
                    ForEach(0..<3) { count in
                        Spacer()
                        Rectangle()
                            .foregroundColor(Color("GreyTwo"))
                            .frame(width: 5)
                        Spacer()
                    }
                }
                VStack {
                    ForEach(0..<10) { count in
                        Spacer()
                        Rectangle()
                            .foregroundColor(Color("GreyTwo"))
                            .frame(height: 5)
                        Spacer()
                    }
                }
                
            }
            
            //MARK: - MainView
            ScrollView(.vertical, showsIndicators: false) {
                ScrollView (.horizontal, showsIndicators: false) {
                    
                    
                    
                    HStack(alignment: .bottom, spacing: 50) {
                        ForEach(data) { data in
                            let _chartHeight = chartHeight
                            let _chartHeightIn100s = _chartHeight/10
                            //let _shadowH = data.shadowH*_chartHeightIn100s
                            let _shadowL = data.shadowL*_chartHeightIn100s
                            //let _open = data.open*_chartHeightIn100s
                            //let _close = data.close*_chartHeightIn100s
                            //Spacer()
                            ChartView(chartHeight: chartHeight, chartWidth: chartWidth,shadowH: data.shadowH, shadowL: data.shadowL, open: data.open, close: data.close)
                                .frame(width: 2.73)
                               // .padding(.top, 6.85)
                                .padding(.bottom, _shadowL+20)
                           
                        }
                       
                    }
                }.frame(width: chartWidth, height: chartHeight, alignment: .center)
            }.frame(width: chartWidth, height: chartHeight, alignment: .center)
           
        }
    }
}

//MARK: - Chart View
struct ChartView: View {
    var chartHeight: CGFloat
    var chartWidth: CGFloat
    var shadowH: Double
    var shadowL: Double
    var open: Double
    var close: Double
    
    var body: some View {
            let _chartHeight = chartHeight
            let _chartHeightIn100s = _chartHeight/10
            let _shadowH = shadowH*_chartHeightIn100s
            let _shadowL = shadowL*_chartHeightIn100s
            let _open = open*_chartHeightIn100s
            let _close = close*_chartHeightIn100s
            let _mainStickHeight = _shadowH-_shadowL
            
        VStack {
            VStack {
               Text("Chart Height: ")
                   .font(.system(size: 25))
               Text("Height in 100's: \(_chartHeight)")
                   .font(.system(size: 25))
               Text("Shadow H: \(_shadowH)")
                   .font(.system(size: 25))
               Text("Shadow L: \(_shadowL)")
                   .font(.system(size: 25))
               Text("Open: \(_open)")
                   .font(.system(size: 25))
               Text("Close: \(_close)")
                   .font(.system(size: 25))
               Text("Demo: \(_close-_open)")
                   .font(.system(size: 25))
                Text("Open: \(open)")
                    .font(.system(size: 25))
                Text("Close: \(close)")
                    .font(.system(size: 25))
            }.padding()
            HStack {
                Text("Main Stick Height: \(_mainStickHeight)")
                    .font(.system(size: 25))
                Text("Candle Height: \(_close-_open)")
                    .font(.system(size: 25))
            }
            ZStack {
                    // main stick
                    RoundedRectangle(cornerRadius: 2)
                        .frame(width: 10, height: CGFloat(shadowH>shadowL ? _shadowH-_shadowL : _shadowL-_shadowH))
                        .foregroundColor(open > close ? Color("Red") : Color("Blue"))
                    // main candle
                    RoundedRectangle(cornerRadius: 2)
                        .frame(width: 20, height: CGFloat(_open>_close ? _open-_close : _close-_open ))
                        .foregroundColor(_open > _close ? Color("Red") : Color("Blue"))
                        .padding(.bottom, _open>_close ? _close-_shadowL : _open-_shadowL)
            }
         
        }
        
        
    }
}




/*
 VStack {
    Text("Chart Height: \(chartHeight)")
        .font(.system(size: 25))
    Text("Height in 100's: \(chartHeight/10)")
        .font(.system(size: 25))
    Text("Shadow H: \(shadowH)")
        .font(.system(size: 25))
    Text("Shadow L: \(shadowL)")
        .font(.system(size: 25))
    Text("Open: \(open)")
        .font(.system(size: 25))
    Text("Close: \(close)")
        .font(.system(size: 25))
    Text("Demo: \((shadowH-shadowL))")
        .font(.system(size: 25))
 }.padding()
 
 VStack {
    Text("Chart Height: ")
        .font(.system(size: 25))
    Text("Height in 100's: \(_chartHeight)")
        .font(.system(size: 25))
    Text("Shadow H: \(_shadowH)")
        .font(.system(size: 25))
    Text("Shadow L: \(_shadowL)")
        .font(.system(size: 25))
    Text("Open: \(_open)")
        .font(.system(size: 25))
    Text("Close: \(_close)")
        .font(.system(size: 25))
    Text("Demo: \(_shadowH-_shadowL)")
        .font(.system(size: 25))
 }.padding()
  
 
 
 */
