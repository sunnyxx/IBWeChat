//
//  ChatRecord.swift
//  IBWeChat
//
//  Created by sunnyxx on 15/10/14.
//  Copyright © 2015年 sunnyxx. All rights reserved.
//

import Foundation

class ChatRecord {
    var isSender: Bool!
    var avatarName: String!
    var content: String!
    
    static func loadSimulatedRecords(block: (([ChatRecord]) -> Void)) {
        let contents = [
            "🎵",
            "有些事",
            "我都已忘记",
            "但我现在还记得",
            "那是一个晚上，我的母亲问我，今天怎~么不~开心？",
            "我说在我的想象中有一双滑板鞋，与众不同最时尚跳舞肯定棒!",
            "整个城市找遍所有的街，都~~没有，她说将来会找到的，时间会给我答案"]
        let records = contents.enumerate().map({ (index, content) -> ChatRecord in
            let record = ChatRecord()
            record.content = content
            record.isSender = index % 2 == 0
            record.avatarName = "sunnyxx"
            return record
        })
        block(records)
    }
}