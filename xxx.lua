lua

5.0以前
没有do while 和 repeat until ，被 repeat end 取代
没有if then，被 if do 取代
没有 .. ，被 + 取代
 
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

5.0
不能用_G, 环境的概念改变，每个非local的function都有一个名为self的环境表，指向调用它的table，
一个文件也是一个function，所以指向本文件的self
可实现面向对象
:不再可用，因为面向对象用 环境 了，而且:也容易用错，
移除setEnv等，新增全局函数 call，call(func, env table, arg1, ...), 同时pcall，xpcall都增加了env的参数
如果function改变了它所在的table，则环境也改变了

为了避免冲突，upvalue需要用$指定，如
local a = 0
local function add(n)
	$a = $a + n
	return $a
end

5.1
require() 会在文件最后添加 return self 也就是说自己不用添加任何return就会返回环境，如果你还要添加return会报错，但是可以用do return end，虽然不建议

load loadfile loadstring 可以带参数，如loadfile(path, param1, param2, ...), 获取的文本中会以一个全局的 ... 得到相应的参数；
这样就把这个调用过程和function保持一致
require，命令行调用也同样，第一个值也是参数，如 reuqire("xxx", 1)，参数为"xxx", 1；lua xxx.lua 1 2 参数为"xxx.lua" 1 2

一些全局函数尽可能变成类函数，
如 unpack, setmetatable 为 table.unpack, table.setmetatable
math库全部为number的元表
原来的全局函数仍可以用，如 math.floor(1) 和 (1).floor() ，因为math是number的元表，通过元表的index方法将self赋值到math的参数上

没有关键字 in while until then 没有符号 : .. 没有特殊字符 _G 增加特殊字符 range 修改 self

-----------------------

local Class = require "class"
local Node = require "CC.Node"

s = {}
s.Size = require "CC.Size"
s.Color = require "CC.Color"

Class.class(self, "newLayer", Node)

-- Class.class(self, "UserData", "BaseData")

local MIN_C = 1
local MAX_C = 5

function ctor(r_color_colorTab, g, b)
	call(super.ctor, self)

	size = s.Size.new(0, 0)
	color = nil
	otherColors = {}

	local t = type(r_color_colorTab)

	if t == "number" do
		color = s.Color.new(r_color_colorTab, g, b)
	elseif t == "color" do
		color = r_color_colorTab
	elseif t == "table" do
		color = r_color_colorTab[1]
		otherColors = r_color_colorTab
	end 	
end

function setColor(c)
	color = c
end

function getMixColor()
	if #otherColors <= 1 do
		return color
	end

	local mix = s.Color.clear
	for _, color = ipairs(otherColors) do
		for i = range($MIN_C, $MAX_C) do
			mix = s.Color.mix(color, mix) 
		end
	end

	return mix
end





