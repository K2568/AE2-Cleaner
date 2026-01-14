me = peripheral.wrap("right")
write("Which mod to purge> ")
local choice = read()
local items = io.open(choice, "r")
if items then
    for line in items:lines() do
        print(line)
    end
    file:close()
end