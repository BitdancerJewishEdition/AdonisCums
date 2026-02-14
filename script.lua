local Players = game:GetService('Players')
local ReplicatedStorage = game:GetService('ReplicatedStorage')
local LocalPlayer = Players.LocalPlayer

for _, v in pairs(ReplicatedStorage:GetChildren()) do
    if v:IsA('RemoteEvent') then
        if v:FindFirstChild('__FUNCTION') and v.__FUNCTION:IsA('RemoteFunction') then
            print('{AdonisCums} Got Adonis remote event: ' .. v.Name)
            v:Destroy()
            print('{AdonisCums} Bye bye!')
        end
    end
end

if hookfunction and hookmetamethod and getnamecallmethod then
    local oldKickFunction
    local oldhmmi
    local oldhmmnc

    oldKickFunction = hookfunction(LocalPlayer.Kick, function() end)

    oldhmmi = hookmetamethod(game, '__index', function(self, method)
        if self == LocalPlayer and method:lower() == 'kick' then
            error('{AdonisCums} hi adonis ur ass adonis btw it tried to detect u just now so now error breaks their thing opa gangam style', 2)
        end

        return oldhmmi(self, method)
    end)

    oldhmmnc = hookmetamethod(game, '__namecall', function(self, ...)
        if self == LocalPlayer and getnamecallmethod():lower() == 'kick' then
            error('{AdonisCums} hi adonis ur ass adonis btw it tried to detect u just now so now error breaks their thing opa gangam style', 2)
        end

        return oldhmmnc(self, ...)
    end)
else
	LocalPlayer:Kick('unsupported executor')
end
