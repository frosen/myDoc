lua

5.0以前
没有do while 和 repeat until ，被 repeat end 取代
没有if then，被 if do 取代

无法使用 '' 只能用 ""
 
统一 for 的用法为 for xx = xxx do end 
原来的 for k,v in pairs(table_name) do
	print(k,v)
end 为
for k,v = pairs(table_name) do
	print(k,v)
end
原来的 for i=1,10 do
	print(i)
end 为
for i = range(1, 10) do
	print(i)
end

upvalue需要增加%

允许 function(a, b,) 

5.0
不能用_G, 环境的概念改变，每个非 local 的 function 都有一个名为 self 的环境表，指向调用它的 table，
一个文件也是一个function，所以指向本文件的self
可实现面向对象
:不再可用，因为面向对象用 环境 了，而且:也容易用错，
setEnv，getEnv设置，获取的就是self
新增全局函数 call
call，pcall，xpcall都增加了env的参数
call, pcall, xpcall变成function的函数，func.call(env, arg1, ...), func.xpcall(returnFunc, env, arg1)
如果function改变了它所在的table，则环境也改变了

self 是可以省略的
%的upvalue依次查找上层的local，上层的self，上上层的local，上上层的self，只查找一次

语法糖：如果文件最后没有return，则会自动加上 return self

5.1
load loadfile loadstring 可以带参数，如loadfile(path, param1, param2, ...), 获取的文本中会以一个全局的 ... 得到相应的参数；
这样就把这个调用过程和function保持一致
require，命令行调用也同样，第一个值也是参数，如 reuqire("xxx", 1)，参数为"xxx", 1；lua xxx.lua 1 2 参数为"xxx.lua" 1 2

一些全局函数尽可能变成类函数，
如 unpack, setmetatable 为 table.unpack, table.setmetatable
math库全部为number的元表
原来的全局函数仍可以用，如 math.floor(1) 和 (1).floor() ，因为math是number的元表，通过元表的index方法将self赋值到math的参数上

tostring() 可以把table转换成字符串，便于和 loadstring 一起高效进行序列化和反序列化

没有关键字 in while until then 没有符号 : .. 没有特殊字符 _G 增加特殊字符 range % 修改 self

5.2
语法糖：
function abc{x = 1, c = 2}
	
end
等于
function abc(__t)
	local x, c
	if __t then
		x = __t[x] or 1
		c = __t[c] or 2
	end
end

不予许 function abc{} 或者 function abc{a, b}

5.3
增加一种值 数组 local a = [4] 其中4表示数组长度
此数组长度不可变，没赋值的为nil，错误的index抛出异常，效率较高

官方luajit，可以用@immutable定义一个不可再增加key的table，用于开启优化
local a = @immutable {
    @number x = 1,
    @string y = "",
}
还有@number @string @boolean @function @table @array @thread于table属性值 @debug @end 等

@debug do

end

-----------------------

local C = require "class"
local Node = require "CC.Node"

local Size = require "CC.Size"
local Color = require "CC.Color"

self = C.class("Layer", Node)

-- Class.class(self, "UserData", "BaseData")

local MIN_C = 1
local MAX_C = 5

function ctor{pos = C.need(), c = nil, r = 0, g = 0, b = 0}
	call(super.ctor, self, pos)

	size = %Size.new(0, 0)
	color = nil
	otherColors = {}

	if not c do
		color = %Color.new(r, g, b)
	else
		color = c
	end	
end

function setColor(c)
	color = c
end

function getMixColor()
	if #otherColors <= 1 do
		return color
	end

	local mix = %Color.clear
	for _, color = ipairs(otherColors) do
		for i = range(%MIN_C, %MAX_C) do
			mix = %Color.mix(color, mix) 
		end
	end

	return mix
end



