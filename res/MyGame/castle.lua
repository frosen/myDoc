xx 装备：
xx 1. 力量 伤害
xx 2. 爆发 暴击率/暴击效果 (*) 10 + 0.5 * 等级；150~250
xx 3. 耐久 HP (100 + 20 * 小等级) * (大等级 * 0.1 + 1) -- 100 .. 4200
xx 4. 敏捷 物理攻击闪躲率 0.4 * 小等级 .../冲刺时候额外获得闪躲 4 * 大等级 闪躲成功后无敌0.3s
xx 5. 精神 魔法攻击力 (*)
xx 6. 决心 消灭敌人回复HP/地图破坏物回复HP (*) 1~100；1~10
xx 7. 洞察 金币数量 20+1 /道具几率
xx 8. 冷静 增加被击中后的无敌时间 0.4 + 0.01 * 等级 /进入地形的无敌时间 0.4 + 等级 * 0.1



序章教程：
    左右移动
    攻击
    跳跃
    长按跳跃跳更高
    下跳
    特殊键 拾起药水
    收集金币
    移动视野
    特殊键 进入门 拾起药水>进入门>下跳>超级跳

-- 32 * 32 一个格子，hero宽1格，高1.5格左右，跳跃2.6格子，
-- 静止状态下一行10格，移动时候，增加到15格左右

-- ********************************************************
-- 序章后，来到一个地下城市，有简单的介绍后，出发；
-- 第一次死后，回到城市中，会有人向你解释，教你升级装备；
-- 每次死亡后就会回到主城，会自动被治疗，治疗就会到第二天，因此怪会刷新；
-- 但治疗有时间限制（体力），限制使用完后则不能被治疗

********************************************************
道具系统
一个场景可能会出0-2个，宝箱可能出0-1个
药水不会自动捡起，需要按下键
分两种
1. 15分钟后消失，类似sky force的临时卡（暂不实现）
2. 死亡后消失，各种随机的增益减损效果：
	可重复的：增加血和血上限，增加攻击力，增加暴击，增加暴击伤害，增加闪避，增加金币数量，增加魔法伤害，增加消灭敌人回复HP；增加移动速度，
	不可重复的：重量不会被击飞，冰降低被击中的敌人的速度，关闭陷阱，降低飞行道具速度
	中毒但是大幅度提高伤害，关闭机械

偶尔刷出小boss

-- ********************************************************
-- 第一关：地下    
-- 第二关：工厂    传送带等各种机关
-- 第三关：图书馆  
-- 第四关：网络    重力颠倒 
-- 第五关：地狱    没有视野 
-- 第六关：自我意识
-- 第七关：沙漠之城
-- 第八关：城堡    

********************************************************
新手礼包 1
无限体力 6
无需升级时间 6
双倍金币 12
免除广告 12
随机卡片 12
-- 闪烁    30 （暂不实现）替代冲刺，冲刺区域向某方向滑动就会向某方向闪烁，可以无限闪烁无论是否落地，可以跨越障碍，可能会破坏游戏平衡，建议谨慎购买，可以用于通过二周目

-- 长老 制造一个道具，第二天获取
-- 治疗者 治疗
-- 铁匠 升级装备，购买神器
-- 法师 更换卡片
-- 守护者 成就
-- 弓手
-- 盗贼
-- 战士

-- ********************************************************
-- 流程
-- 起始公司画面后，无需主标题，先是选择三个存档之一，然后有一屏纯文字渲染气氛（真实与虚幻），然后直接进入游戏；
-- 进入教程，主角从地下跟着平台升上来，一路获取各种基本装备，并获得用途介绍；最后再踏上一个平台上升；升到一个房间里，打开门；显示主标题；
-- 新场景：出门后，来到一个地下村落，长老说：英雄欢迎回来，并让你去营救大法师，向右走可以出村；
-- 第一关：出村还是自然的地下，有单一的主路线可以走，会有一些小分支，和一些暂时到不了的地方；
-- 你的第一次死亡时候，会到村里一房间，出来时，治疗者会告诉你，你有一个能力就是不死，在出发地出现，然而一段时间内会虚弱，她可以给你治疗，治疗也需要一天的时间，
--     因此无论是死亡还是治疗，怪物都会刷新。出村后你也可以回来接受治疗。同时让你去找到军需官，了解下升级装备，不去的话不能走出村。
--     升级装备其实也是缴纳在外面获取到的资源（魔法碎片），这个世界的一切资源都可以用魔法碎片实现。
--     另外一点是，由于恶魔的破坏这个世界变得很不稳定，结界以外的空间会大幅度变化

-- 第一关打败boss后，救回法师，法师会给你二段跳卡片，同时可以在他这里查看所拥有的卡片和更换携带卡。
--     他会告诉你外面世界已经被恶魔侵占，这里是为数不多的人类据点，来到这里是因为在这里发现了最后一块古代遗迹，
--     一共有四个遗迹，里面分别放着世界之石的碎片，其他三个一个还在人类手里，在另外的一个据点保存，
--     另两个已经落入恶魔之手，他这次出去已经发现了遗迹的秘密，但还需要时间研究。然后会告诉你村长有任务
--     1. 然后村长会给你一个任务，人类发现有一个碎片藏在恶魔的机械工厂，但看守严密，正面军正在佯攻吸引火力，
--         而主角跟随盗贼从地下进入工厂关闭电源，然后主力军就可以取得胜利了
--     2. 第二天，法师也会给你一个任务，神的图书馆，带回一本书，是对古代遗迹的研究
-- 第二关：与盗贼交谈，他带着你来到工厂，并暗中帮你开启机关，此处地图复杂路线较多，但目的地都是发电空间
--     打败

-- 第三关：图书馆

-- 通关工厂后，回到村里，村长说战斗并不成功，恶魔对此早有准备，把碎片转移到了赛博空间，但也不是没有收获，他们获取了进入空间的密码。
--     这需要主角再次回到工厂，通过一个地方，使用密码进入赛博空间，盗贼会帮助你，
--     但是会提醒你敌人增加了守卫，也就是怪物增强了（实际上每过一关，所有关的怪物都会增强）
--     第三关过后会获得蓄力炮，这时候法师会告诉你增强魔法攻击的方法，一个是第一关拿到一个项链，一个是图书馆拿到魔法增强的卡片

-- 第四关：赛博空间，只要到过这里，下次再和盗贼交谈就可以选择去工厂还是去赛博空间，这里通过触碰机关可以改变自己和怪物的重力

-- 额外关：赛博空间后，可以与盗贼pk（获得钱），然后与守护者pk（手套），然后与长老pk（获得某个卡片）

-- 取得图书馆的书后，如果村长的任务没有完成，他会让你去完成，否则在第二天，他会研究出如何进入遗迹
--     入口在第一关boss的房间，因此要重新打，法师会提醒你因为遗迹的力量怪物在增强（实际上每过一关，所有关的怪物都会增强）

-- 第五关：古代遗迹

-- 第六关：自我意识

-- 第七关：沙漠之城

-- 第八关：城堡

-- 第一周目：击败最终boss后，boss会透露认识主角的感觉，并且并没有想到主角能够击败他，所以他不得不使用那个技能，尽管知道主角有一定的免疫力，
--     于是在boss脚下出现了进度条，并最后回到了游戏一开始。

-- 第二周目：你保留记忆又回到了开始，你会保留卡片，
--     救回法师后，法师会给你头饰，可获得更多的无敌时间，可用于过二周目（如果不断刷的话）和冲刺跳；
--     工厂作战会失败，但你已经知道了碎片在赛博空间也知道密码；
--     去图书馆前，法师会告诉你里面有增加飞行能力的卡片，于是在图书馆有个特殊的空间，完成任务后得到“冲刺跳”
--     其实每一关通过后能打第二次，但一直没有提示，但此时长老会告诉你，打完第二次boss后可以获得一种道具的制作方法，你可以在长老这里选择
--     长老会在第二天完成；而赛博空间的boss可以获得道具：机械停止，这个会让你在跳台时更困难，但却是二周目的关键
--     boss会说竟然又被你击败，好在那招还好用，如果你获得了超级跳，关闭了机械；或者学了闪烁，或者获得了超级跳并把头饰升级到了很高的等级
--     可以在loading技能成功前击中boss，直接渐黑进入结束动画：会告诉你人类在你的帮助下击败了恶魔取得了胜利，而你也会被后人传颂；
--     然后又回到了场景中，你可以出发boss尸体，选择是否loading进入第三周目；
--     主角会获得一个背包格子

-- 第三周目：和二周目几乎一样，法师会给你大量的钱；
--     boss会说竟然又被你击败，好在那招还好用，如果这次你能击中boss，boss会消失，从另一边出来了真正的boss，原来你击中的那个是替身，
--     boss说你利用他的能力回到过去，就是给他机会了解事情的来龙去脉，说其实你们是兄弟，而在你们兄弟对抗邪恶法师并即将取得最终胜利的时候，你被法师控制
--     并说这次重生他寻找到了真实之眼，然后你会发现boss并不是骷髅的样子，你一路击败的怪物都是人类士兵，
--     他说你可以选择相信他或者不信，你若不信就回到另一边杀了他，否则给你准备了传送器回去看看你的长老吧，boss不能和你一起去是因为有结界
--     你回去后发现长老和村里的样子都变成了邪恶巫师，长老还在惊奇你为何回来，你可以选择击杀他，选择后，和长老以及其他村民战斗；
--     击败后，进入结束动画；会告诉你，世界本来和平，但是来了邪恶巫师，在危难关头，你和boss都受到了神的祝福，一个可以拥有了穿越时间的机器，另一个拥有了不死之身；
--     但主角后来被邪恶巫师控制差一点就让巫师取得胜利，最后boss使用真实之眼让你恢复了神智，并取得胜利
--     然后又回到了场景，可以利用传送器再回去，你依然可以选择杀死boss（因为只有这样才能下一周目），但这次boss会变得更强，
--     击败后会进入另一个结束动画，是说邪恶国王利用机械毁坏自然，有个法师出来反抗，国王的两个儿子一个帮助国王，而另一个就是主角，帮助法师，在法师死后，主角继承了法师的衣钵
--     击败了已经继位的boss，为大自然取得了胜利。然后会场景，可以进入下一周目

-- 第四周目：和第三周目基本一样，只是最后回到boss那里时，boss会说我知道你是来杀我的

********************************************************

负面效果：中毒（每1秒掉血一次，持续5秒），冰冻（降低速度和跳跃高度），诅咒（减少攻击力）

********************************************************
卡片
一共36张 6排
前2排1颗星
3, 4排2颗星
5，6排三颗星，且输入需要佩戴的，起始只能佩戴2张，4排卡片中有升级到4张

G*二段跳 (1)
G*冲刺 (1)
G踩墙跳 (2) 对着墙冲刺时跳跃可以额外获得一次跳跃
G*金币吸附
地图显示敌人
G击退状态下，可以通过跳来移除击退状态，只要跳的数量还有
G机关不会硬直
G每物理攻击命中一个怪物，恢复10点能量；能量可给下一次命中的魔法进行增幅，75%概率伤害为300%，不同魔法消耗不一样；最多300点；以颜色显示而不是以数值 (1)
G每物理攻击命中一个可破坏物，恢复10点能量 (2)
G切换地图区域时，如果能量不足100，则补足到100
G额外获得hp 150
强化魔法（蓄力炮增加蓄力速度，火圈增加半径，跟踪弹减少cd，死亡炸弹增加概率，寒冰增加冰冻时间，分身增加攻击距离）


保留效果
Boss减速
G满血增加暴击伤害
G接近死亡时候，增加伤害
回血效果增加5%，10%（有道具回复10%和濒死回血技能）
G多获得一个格子
学习 降低升级花费 5%
G降低负面效果的时间
G额外获得物理攻击力
G额外获得法术攻击力
GHP小于30%的敌人造成额外15->30%的伤害
G伤害减少5->10%


G大真理之剑：剑气 可穿墙
蓄力炮 移动时候蓄力，松开方向后发射，2级后，后坐力会让主角后退一小段
G火圈 可穿墙
小蜜蜂跟踪弹 (1)
濒死回血 免疫致命伤并在10秒内回复30/45/60%HP；每天仅能用一次
“来我身边”超级炸弹 敌人死亡后有几率飞出一枚炸弹
腐烂的苹果 所有受到伤害的敌人会中毒
护甲 受到伤害后5秒内，减少受到的伤害，增加自己对敌人的伤害
飞行鞋 移动速度快，跳的高，同时增加攻速
实力的证明 减少攻击力40%，受到伤害增加40%，此状态下消灭boss可以获得额外的UI效果，比如剑的颜色，用户界面的颜色等，并且可以参与排名
寒冰 有100能量后可以使用，蓄力后，发射1-3枚寒冰闪，沿着hero的运动方向，会冰冻敌人，然后沿着路径进行爆炸，伤害较高
冲刺时会留下一个残影，伤害碰到的敌人；
    1级持续3秒；
    2级时候会在0.5秒后冲刺向最近的敌人，有最小最大距离，没有则不冲刺；之后再0.5秒再冲刺，一共三次，可以穿墙；
    3级后增加最大最小距离，增加冲刺数量到5次，间隔0.3秒

-- ********************************************************
-- 机械停止+踩踏，无敌时间+跳跃恢复
-- 降低重力，冲刺跳


********************************************************
-- 金币数加分隔符
let n: number = 123456789;
let s: string = (n || 0).toString().replace(/(\d)(?=(?:\d{3})+$)/g, '$1,');
cc.log("osize", s);

捡拾道具的动效类似盗贼遗产，但不显示数值

更换音乐的时候会显示场景名称和音乐名称

尽量减少垃圾时间，标题和作者进入游戏才显示，

********************************************************
===地下森林
开始是一个男孩（主角）闯入到了一个类似地下森林的地方，不一会后面跟来了一个小胖子
小胖子是主角的室友（自称大头），会说去吧去吧，刚好野狗找骨头，主角会说“去死吧，我已经说了，我不叫野狗了，以后请叫我猛虎”
两人一边贫嘴一边表达了对这片地下森林的惊奇，主角说去前面看看，小胖说随后就到
第一次进入地下森林时，第一个场景是训练关，会有提示告诉玩家如何操作，以后再进入则不会有训练关
跑出第一场景后回来，再与小胖对话，会问他怎么还在这里，可以有一番有趣的对话。
主角昏厥（一般游戏中的死亡），则会在第二天在自己的宿舍中醒来，小胖在边上，并告诉他是他救他回来的，并说主角欠他人情，让主角帮他洗鞋。
之后两个会开始白天的事情，两人走出宿舍，来到训练室，发现这里其实是一个学校，类似杀手学校，
学校的老师是一台或者N台机器人，机器人让这里的孩子叫他妈妈，
刚好这天来了两个新人，代号是93和94，于是妈妈则说明了一下这里的情况，
如今的世界已经是一片废墟了，恶魔入侵了人类世界，人类危在旦夕
而这里是一个结界中的学校，这些孩子是人类中的精英，在这里接受训练，然后负责拯救这个世界。
在此训练有很多规则，但其中最终要的一点是，在毕业之前不要试图走出学校，也不要打探外面的世界，因为，妈妈说，这非常危险。
然后就到了训练时间，作为也新到不久的主角和小胖来说（小胖是79号，主角是80号），妈妈问是否需要复习一下训练方式，是的话，则会介绍训练版面的使用。
训练版面就是游戏中的升级版面，主角每晚的冒险会获得精神点，用精神点开始训练
训练会在点击开始训练时候开始，但会有训练时间（真实时间），到时间才会完成，除非花费精神点直接完成，或者花钱变成立即完成模式。
训练之前也可以找这里的其他伙伴聊天，目前除了主角和小胖，还有四个人

一开始的晚上，小胖会一人在宿舍打游戏机，新来的瘦弱眼睛男（93号叫眼镜），叫做“来自吉尔吉斯塔的紫色海草”的长发姐姐（67号），还有叫做“尺”的红发男孩（52号）会在一个宿舍打斗地主
主角去和打牌的人臭贫，海草会让你来玩，因为她觉得你很聪明，但如果你玩了，你会输掉接下来几天的午餐劵
还有个新来的萝莉叫做火火兔，前几天找不到她，过几天会来你宿舍约你去练习场，出门前大头会说“这样古灵精怪的女孩，去了准没好事”
你可以不去，但你去了的话，火火兔会让你做她男朋友，当然，是秘密的，因为这里不让恋爱
你同意了，她会让你陪她战斗，你不同意，她会哭，然后爆发，强制进入战斗，并且会使用“巨擎杀”
然后会每晚经常来找你战斗聊天或者玩别的东西，你不去就直接去你宿舍找你

训练后就会到晚上，主角透露出在宿舍里发现的秘密通道到达的那片森林，这个秘密通道正好是妈妈监控的死角，而严格的学校管理让他十分神往自由的外面世界
因此主角表示还打算去地下森林闯荡一番，并拉着小胖一起去
小胖刚开始拒绝，主角各种谄媚，最终在答应每去一次就多帮小胖洗一次鞋之后，开始了两人的闯荡
《如果此时往室外走，会被妈妈警告晚上不得离开宿舍 ==> 从宿舍到食堂到练习室可以随意走，但是再往上就不行了，那边是控制室
于是两人就开始了白天训练而晚上闯荡地下的生活，白天应该也会发生一些事情，除了各种找火火兔聊天格斗和其他游戏，还可以去打牌，和别人格斗，聊天

必须有体力才能继续探索，否则小胖会提示你看左上角的体力值


终于遇到了森林的boss（绿龙），如果打boss时候死亡，第二天晚上两人会由于一下是否再去，但主角昨晚做梦梦到了boss想让他去，而小胖也梦到了
探索过程中，小胖会在初始场景原地，可以用于换装备，还可以打赌谁先到“原罪”那里
打败boss后，boss会变成人形，告诉主角他也曾经是这里的学生，5号，自称为“原罪”

原罪会告诉你世界被机器控制的真相，而你们则是被机器培养的杀手，用机器不具备的精神力，反制现在还在抵抗的人类；而原罪在作为学生时偶然间恢复了自己的记忆，
并逃到了这里，他有方法不让机器追查到他的位置，但也不能过于靠近学校。接下来的几年中，他一直设法破坏这里，但最终还要进入学校内部，而这最好是能有
其他学生的帮助；因为原罪是绿龙的后裔，可以进入梦境，可以自我对话（小胖会吐槽他是不是已经疯了），所以才能自己坚持这么多年；
当然你们半信半疑，于是让你们去这个训练基地更地下的旧址，有方法可以让他们恢复记忆
===废旧工厂
然后就去旧址
最终找到恢复记忆的机器，由于也不知道会不会有危险，小胖会套路你，让你先尝试，但是你揭发了他的套路，并生气于他在探索过程中并不帮助你，说要绝交，
于是小胖认怂使用了机器，这时小胖像傻了一样，只会说“哎呦我去”，但是触发机关让boss来了，你去对付boss，一次击败，你会救走小胖，死了还是小胖救你，
之后你会回去击败boss，再使用机器，却发现已经不能用了
小胖恢复了部分记忆叫做“李文拓”，同时称原罪为王子殿下

寻找隐形装置 ===废旧工厂2
之后会接到下一个任务，寻找


营救海草姐姐 ===战斗空间 特殊
超级链接 ===精神与信息世界


最终boss ===训练营顶层
选择是否救尺和眼镜
如果救 眼镜背叛 与其战斗 升级后要选择是否杀死 不杀他会偷袭 文中招 罪跳过来杀死眼镜 煽情后 作为大地之子的文会复活
不救 两人被机器抓 当着大家面杀死尺 随后背着主角 罪把眼镜杀死为了不让主角感情用事
与眼镜学习可以过得增加某项经验
与尺打赌 获得胃疼
尺也会来找主角去打牌

结局：
和火火兔在一起对付最终boss，海草死亡；
和海草在一起对付最终boss，火火兔和李文拓在一起；
和李文拓在一起对付最终boss
和李文拓在一起，李文拓和火火兔在一起

主角 格斗体术
李文拓 土系
火火兔 火系















