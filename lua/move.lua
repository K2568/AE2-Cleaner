me = peripheral.wrap("right")
write("Which mod to purge> ")
local choice = read()
local items = io.open(choice..".txt", "r")
if items then
    for line in items:lines() do
        itemId = choice..":"..line
        print(line)
        itemTable = me.getItem({name=itemId})
        if itemTable == nil then
            print("Item not found")
        else
            num = itemTable["amount"]
            print(num)
            if num < 5000 then
                 me.exportItem({name=itemId, count=num}, "up")
                 print("Items moved")
            else
                print("More than 5k of this item")
        end
        print()
    end
    items:close()
end