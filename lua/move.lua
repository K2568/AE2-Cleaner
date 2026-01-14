me = peripheral.wrap("right")
write("Which mod to purge> ")
local choice = read()
local items = io.open(choice.."txt", "r")
if items then
    for line in items:lines() do
        itemId = choice..":"..line
        print(line)
        num = me.getItem({name=itemId})
        me.exportItem({name=itemId, count=num}, "up")
    end
    items:close()
end