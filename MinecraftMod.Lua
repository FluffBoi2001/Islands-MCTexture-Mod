local dir = {0,1,2,3,4,5}

local function insertText(block,top,sides,buttom,offset)
    for _,i in pairs(dir) do
        local tex = Instance.new("Texture")
        tex.StudsPerTileU = 3
        tex.StudsPerTileV = 3

        tex.OffsetStudsU = offset
        tex.OffsetStudsV = offset

        tex.Face    = i
        tex.Parent  = block

        if i == 1 then
            tex.Texture = top
        elseif  i == 4 then
            tex.Texture = sides
        else 
            tex.Texture = buttom
        end
    end
end

local function inert(block)
    if block.Name == "grass" then
        task.spawn(function()
            local connection = game:GetService("RunService").RenderStepped:Connect(function()
                for _,content in pairs(block:GetChildren()) do
                    if content.Name == "Top" then
                        content.Transparency = 1
                    end
                end
            end)
            task.wait(2)
            connection:Disconnect()
        end)

        local top       = "http://www.roblox.com/asset/?id=96430265"
        local sides     = "http://www.roblox.com/asset/?id=96430337"
        local buttom    = "http://www.roblox.com/asset/?id=96167755"
        insertText(block,top,sides,buttom,1.5)
    end

    if block.Name == "stone" then
        local top       = "http://www.roblox.com/asset/?id=132879294"
        local sides     = "http://www.roblox.com/asset/?id=132879294"
        local buttom    = "http://www.roblox.com/asset/?id=132879294"
        insertText(block,top,sides,buttom,1.5)
    end

    if block.Name == "glassBlock" then
        block.Transparency = 1
        local top       = "http://www.roblox.com/asset/?id=38349675"
        local sides     = "http://www.roblox.com/asset/?id=38349675"
        local buttom    = "http://www.roblox.com/asset/?id=38349675"
        insertText(block,top,sides,buttom,0)
    end

    if block.Name == "woodPlank" then
        block.Transparency = 0
        local top       = "http://www.roblox.com/asset/?id=88459504" 
        local sides     = "http://www.roblox.com/asset/?id=88459504"
        local buttom    = "http://www.roblox.com/asset/?id=88459504" 
        insertText(block,top,sides,buttom,0)
    end

    if block.Name == "wood" then
        block.Transparency = 0
        local top       = "http://www.roblox.com/asset/?id=3313419952" 
        local sides     = "http://www.roblox.com/asset/?id=3313419952"
        local buttom    = "http://www.roblox.com/asset/?id=3313420421"
        insertText(block,top,sides,buttom,1.5)
    end

    if block.Name == "brick" then
        block.Transparency = 0
        local top       = "http://www.roblox.com/asset/?id=118554190" 
        local sides     = "http://www.roblox.com/asset/?id=118554190"
        local buttom    = "http://www.roblox.com/asset/?id=118554190"
        insertText(block,top,sides,buttom,0)
    end

    if block.Name == "dirt" then
        block.Transparency = 0
        local top       = "http://www.roblox.com/asset/?id=96167755" 
        local sides     = "http://www.roblox.com/asset/?id=96167755"
        local buttom    = "http://www.roblox.com/asset/?id=96167755"
        insertText(block,top,sides,buttom,0)
    end

    if block.Name == "gravel" then
        block.Transparency = 0
        local top       = "http://www.roblox.com/asset/?id=6849247561" 
        local sides     = "http://www.roblox.com/asset/?id=6849247561"
        local buttom    = "http://www.roblox.com/asset/?id=6849247561"
        insertText(block,top,sides,buttom,0)
    end

    if block.Name == "obsidian" then
        block.Transparency = 0
        local top       = "rbxassetid://7468519199" 
        local sides     = "rbxassetid://7468519199"
        local buttom    = "rbxassetid://7468519199"
        insertText(block,top,sides,buttom,0)
    end



end

for _,Island in pairs(workspace.Islands:GetChildren()) do
    for _,block in pairs(Island.Blocks:GetChildren()) do
        inert(block)
    end
end

for _,Island in pairs(workspace.Islands:GetChildren()) do
	Island.Blocks.ChildAdded:Connect(function(block)
		inert(block)
	end)
end
