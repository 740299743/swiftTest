//
//  colorExtension.swift
//  swiftTest
//
//  Created by pactera on 8/6/15.
//  Copyright (c) 2015 pactera. All rights reserved.
//

import UIKit

extension UIColor{
    
    /*
    
    swift中字符串截取方法(substring）
    由 solar 在 1年前 发布 9231 次点击
    下面介绍2种swift的字符串截取方法,实际上用到了substringFromIndex,substringToIndex,substringWithRange
    
    1.将String转化为NSString再截取,代码如下：
    
    var s="1234567890"
    
    var ns1=(s as NSString).substringFromIndex(5)
    var ns2=(s as NSString).substringToIndex(4)
    
    var ns3=(s as NSString).substringWithRange(NSMakeRange(4, 1))
    
    println(ns1)//67890
    println(ns2)//1234
    println(ns3)//5
    2.直接调用String的对应方法(推荐使用该方法),由于String对应的方法参数是String.Index类型而非Int类型,所以我们首先要创建String.Index类型参数值,代码如下：
    
    var s="1234567890"
    
    let index = advance(s.startIndex, 5)
    let index2 = advance(s.endIndex, -6);
    var range = Range<String.Index>(start: index2,end: index)
    
    var s1:String=s.substringFromIndex(index)
    var s2:String=s.substringToIndex(index2)
    var s3=s.substringWithRange(range)
    
    println(s1)//67890
    println(s2)//1234
    println(s3)//5
    通过String定义可以看出属性Index是个结构体,具体代码如下：
    
    extension String : CollectionType {
    struct Index : BidirectionalIndexType, Comparable, Reflectable {
    func successor() -> String.Index
    func predecessor() -> String.Index
    func getMirror() -> MirrorType
    }
    var startIndex: String.Index { get }
    var endIndex: String.Index { get }
    subscript (i: String.Index) -> Character { get }
    func generate() -> IndexingGenerator<String>
    }
    */
    func colorWithHexString (hex:String)-> UIColor {
        
        var cString: String = hex.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()).uppercaseString
        
        if (cString.hasPrefix("#")) {
            cString = cString.substringFromIndex(1)
            //cString = cString.substringFromIndex(1)
        }
        
        if (countElements(cString)!= 6) {
            return UIColor.grayColor()
        }
        
        var rString = cString.substringToIndex(2)
        var gString = cString.substringFromIndex(2).substringToIndex(2)
        var bString = cString.substringFromIndex(4).substringToIndex(2)
        
        var r:CUnsignedInt = 0, g:CUnsignedInt= 0, b:CUnsignedInt =0;
        NSScanner.scannerWithString(rString).scanHexInt(&r)
        NSScanner.scannerWithString(gString).scanHexInt(&g)
        NSScanner.scannerWithString(bString).scanHexInt(&b)
        
        return UIColor(red: Float(r) / 255.0, green:Float(g) / 255.0, blue:Float(b) / 255.0, alpha:Float(1))
    }

    func RGBA(r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat )->UIColor
    {
        return UIColor(red: r, green: g, blue: b, alpha: a)
    }
    
}

