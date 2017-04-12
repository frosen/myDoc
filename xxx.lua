lua

5.0以前
没有do while 和 repeat until ，被 repeat end 取代
没有if then，被 if do 取代
没有 .. ，被 + 取代

5.0
不能用_G, 每个文件，在load时，就是在执行一个function，这时会有个本地环境，被叫做 self的table，所有文件内的不带local的写法都是self这个table的属性
其他的function在创建时只要不是local的都会存在本地环境指向拥有它的table，这个环境绑定了就不会改变，除非用bind(func, owner)，pcall, xpcall，多一个参数
如：a = 1 为 self.a = 1
可用此实现面向对象
:不再可用，因为面向对象用 环境 了，而且:也容易用错，
						
function中，用<xxx>来引用upvalue，只能引用上一层的
local a = 1
function () <a>
    a = a + 1
end
可以避免self与upvalue的冲突，也提高了查找upvalue的效率
						
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

5.1
其他一些全局函数尽可能变成类函数，
如 unpack, setmetatable 为 table.unpack, table.setmetatable

没有关键字 in while until then 没有符号 : .. 没有特殊字符 _G 增加特殊字符 this range 增加全局函数bind 增加符号<>，self意义改变
