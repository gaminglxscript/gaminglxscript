
if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
end

function TweenBoat(CFgo)
local tween_s = game:service"TweenService"
local info = TweenInfo.new((game:GetService("Workspace").Boats[_G.SeliBoat].VehicleSeat.CFrame.Position - CFgo.Position).Magnitude/350, Enum.EasingStyle.Linear)
tween = tween_s:Create(game:GetService("Workspace").Boats[_G.SeliBoat].VehicleSeat, info, {CFrame = CFgo})
tween:Play()
local tweenfunc = {}
function tweenfunc:Stop()
tween:Cancel()
end
return tweenfunc
end

function MaterialMon()
        if _G.SelectMaterial == "Radioactive Material" then
            MMon = "Factory Staff"
            MPos = CFrame.new(-507.7895202636719, 72.99479675292969, -126.45632934570312)
            SP = "Bar"
        elseif _G.SelectMaterial == "Mystic Droplet" then
            MMon = "Water Fighter"
            MPos = CFrame.new(-3214.218017578125, 298.69952392578125, -10543.685546875)
            SP = "ForgottenIsland"
        elseif _G.SelectMaterial == "Magma Ore" then
            if game.PlaceId == 2753915549 then
                MMon = "Military Spy"
                MPos = CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875)
                SP = "Magma"
            elseif game.PlaceId == 4442272183 then
                MMon = "Lava Pirate"
                MPos = CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375)
                SP = "CircleIslandFire"
            end
        elseif _G.SelectMaterial == "Angel Wings" then
            MMon = "Royal Soldier"
            MPos = CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375)
            SP = "Sky2"
        elseif _G.SelectMaterial == "Leather" then
            if game.PlaceId == 2753915549 then
                MMon = "Pirate"
                MPos = CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625)
                SP = "Pirate"
            elseif game.PlaceId == 4442272183 then
                MMon = "Marine Captain"
                MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
                SP = "Greenb"
            elseif game.PlaceId == 7449423635 then
                MMon = "Jungle Pirate"
                MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
                SP = "PineappleTown"
            end
        elseif _G.SelectMaterial == "Scrap Metal" then
            if game.PlaceId == 2753915549 then
                MMon = "Brute"
                MPos = CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125)
                SP = "Pirate"
            elseif game.PlaceId == 4442272183 then
                MMon = "Mercenary"
                MPos = CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125)
                SP = "DressTown"
            elseif game.PlaceId == 7449423635 then
                MMon = "Pirate Millionaire"
                MPos = CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875)
                SP = "Default"
            end
        elseif _G.SelectMaterial == "Demonic Wisp" then
            MMon = "Demonic Soul"
            MPos = CFrame.new(-9503.388671875, 172.139892578125, 6143.0634765625)
            SP = "HauntedCastle"
        elseif _G.SelectMaterial == "Vampire Fang" then
            MMon = "Vampire"
            MPos = CFrame.new(-5999.20458984375, 6.437741279602051, -1290.059326171875)
            SP = "Graveyard"
        elseif _G.SelectMaterial == "Conjured Cocoa" then
            MMon = "Chocolate Bar Battler"
            MPos = CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375)
            SP = "Chocolate"
        elseif _G.SelectMaterial == "Dragon Scale" then
            MMon = "Dragon Crew Warrior"
            MPos = CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125)
            SP = "Hydra1"
        elseif _G.SelectMaterial == "Gunpowder" then
            MMon = "Pistol Billionaire"
            MPos = CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875)
            SP = "Default"
        elseif _G.SelectMaterial == "Fish Tail" then
            MMon = "Fishman Captain"
            MPos = CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875)
            SP = "PineappleTown"
        elseif _G.SelectMaterial == "Mini Tusk" then
            MMon = "Mythological Pirate"
            MPos = CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125)
            SP = "BigMansion"
        end
    end
function CheckQuest() 
MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
if World1 then
    if MyLevel == 1 or MyLevel <= 9 then
        Mon = "Bandit"
        LevelQuest = 1
        NameQuest = "BanditQuest1"
        NameMon = "Bandit"
        CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
        CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
    elseif MyLevel == 10 or MyLevel <= 14 then
        Mon = "Monkey"
        LevelQuest = 1
        NameQuest = "JungleQuest"
        NameMon = "Monkey"
        CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
        CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
    elseif MyLevel == 15 or MyLevel <= 29 then
        Mon = "Gorilla"
        LevelQuest = 2
        NameQuest = "JungleQuest"
        NameMon = "Gorilla"
        CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
        CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
    elseif MyLevel == 30 or MyLevel <= 39 then
        Mon = "Pirate"
        LevelQuest = 1
        NameQuest = "BuggyQuest1"
        NameMon = "Pirate"
        CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
        CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
    elseif MyLevel == 40 or MyLevel <= 59 then
        Mon = "Brute"
        LevelQuest = 2
        NameQuest = "BuggyQuest1"
        NameMon = "Brute"
        CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
        CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
    elseif MyLevel == 60 or MyLevel <= 74 then
        Mon = "Desert Bandit"
        LevelQuest = 1
        NameQuest = "DesertQuest"
        NameMon = "Desert Bandit"
        CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
        CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
    elseif MyLevel == 75 or MyLevel <= 89 then
        Mon = "Desert Officer"
        LevelQuest = 2
        NameQuest = "DesertQuest"
        NameMon = "Desert Officer"
        CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
        CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
    elseif MyLevel == 90 or MyLevel <= 99 then
        Mon = "Snow Bandit"
        LevelQuest = 1
        NameQuest = "SnowQuest"
        NameMon = "Snow Bandit"
        CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
        CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
    elseif MyLevel == 100 or MyLevel <= 119 then
        Mon = "Snowman"
        LevelQuest = 2
        NameQuest = "SnowQuest"
        NameMon = "Snowman"
        CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
        CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
    elseif MyLevel == 120 or MyLevel <= 149 then
        Mon = "Chief Petty Officer"
        LevelQuest = 1
        NameQuest = "MarineQuest2"
        NameMon = "Chief Petty Officer"
        CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
    elseif MyLevel == 150 or MyLevel <= 174 then
        Mon = "Sky Bandit"
        LevelQuest = 1
        NameQuest = "SkyQuest"
        NameMon = "Sky Bandit"
        CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
        CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
    elseif MyLevel == 175 or MyLevel <= 189 then
        Mon = "Dark Master"
        LevelQuest = 2
        NameQuest = "SkyQuest"
        NameMon = "Dark Master"
        CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
        CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
    elseif MyLevel == 190 or MyLevel <= 209 then
        Mon = "Prisoner"
        LevelQuest = 1
        NameQuest = "PrisonerQuest"
        NameMon = "Prisoner"
        CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
        CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
    elseif MyLevel == 210 or MyLevel <= 249 then
        Mon = "Dangerous Prisoner"
        LevelQuest = 2
        NameQuest = "PrisonerQuest"
        NameMon = "Dangerous Prisoner"
        CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
        CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
    elseif MyLevel == 250 or MyLevel <= 274 then
        Mon = "Toga Warrior"
        LevelQuest = 1
        NameQuest = "ColosseumQuest"
        NameMon = "Toga Warrior"
        CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
        CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
    elseif MyLevel == 275 or MyLevel <= 299 then
        Mon = "Gladiator"
        LevelQuest = 2
        NameQuest = "ColosseumQuest"
        NameMon = "Gladiator"
        CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
        CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
    elseif MyLevel == 300 or MyLevel <= 324 then
        Mon = "Military Soldier"
        LevelQuest = 1
        NameQuest = "MagmaQuest"
        NameMon = "Military Soldier"
        CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
        CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
    elseif MyLevel == 325 or MyLevel <= 374 then
        Mon = "Military Spy"
        LevelQuest = 2
        NameQuest = "MagmaQuest"
        NameMon = "Military Spy"
        CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
        CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
    elseif MyLevel == 375 or MyLevel <= 399 then
        Mon = "Fishman Warrior"
        LevelQuest = 1
        NameQuest = "FishmanQuest"
        NameMon = "Fishman Warrior"
        CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
        CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
        if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        end
    elseif MyLevel == 400 or MyLevel <= 449 then
        Mon = "Fishman Commando"
        LevelQuest = 2
        NameQuest = "FishmanQuest"
        NameMon = "Fishman Commando"
        CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
        CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
        if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        end
    elseif MyLevel == 450 or MyLevel <= 474 then
        Mon = "God's Guard"
        LevelQuest = 1
        NameQuest = "SkyExp1Quest"
        NameMon = "God's Guard"
        CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
        CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
        if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
        end
    elseif MyLevel == 475 or MyLevel <= 524 then
        Mon = "Shanda"
        LevelQuest = 2
        NameQuest = "SkyExp1Quest"
        NameMon = "Shanda"
        CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
        CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
        if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
        end
    elseif MyLevel == 525 or MyLevel <= 549 then
        Mon = "Royal Squad"
        LevelQuest = 1
        NameQuest = "SkyExp2Quest"
        NameMon = "Royal Squad"
        CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
    elseif MyLevel == 550 or MyLevel <= 624 then
        Mon = "Royal Soldier"
        LevelQuest = 2
        NameQuest = "SkyExp2Quest"
        NameMon = "Royal Soldier"
        CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
    elseif MyLevel == 625 or MyLevel <= 649 then
        Mon = "Galley Pirate"
        LevelQuest = 1
        NameQuest = "FountainQuest"
        NameMon = "Galley Pirate"
        CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
        CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
    elseif MyLevel >= 650 then
        Mon = "Galley Captain"
        LevelQuest = 2
        NameQuest = "FountainQuest"
        NameMon = "Galley Captain"
        CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
        CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
    end
elseif World2 then
    if MyLevel == 700 or MyLevel <= 724 then
        Mon = "Raider"
        LevelQuest = 1
        NameQuest = "Area1Quest"
        NameMon = "Raider"
        CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
        CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
    elseif MyLevel == 725 or MyLevel <= 774 then
        Mon = "Mercenary"
        LevelQuest = 2
        NameQuest = "Area1Quest"
        NameMon = "Mercenary"
        CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
        CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
    elseif MyLevel == 775 or MyLevel <= 799 then
        Mon = "Swan Pirate"
        LevelQuest = 1
        NameQuest = "Area2Quest"
        NameMon = "Swan Pirate"
        CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
        CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
    elseif MyLevel == 800 or MyLevel <= 874 then
        Mon = "Factory Staff"
        NameQuest = "Area2Quest"
        LevelQuest = 2
        NameMon = "Factory Staff"
        CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
        CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
    elseif MyLevel == 875 or MyLevel <= 899 then
        Mon = "Marine Lieutenant"
        LevelQuest = 1
        NameQuest = "MarineQuest3"
        NameMon = "Marine Lieutenant"
        CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
        CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
    elseif MyLevel == 900 or MyLevel <= 949 then
        Mon = "Marine Captain"
        LevelQuest = 2
        NameQuest = "MarineQuest3"
        NameMon = "Marine Captain"
        CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
        CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
    elseif MyLevel == 950 or MyLevel <= 974 then
        Mon = "Zombie"
        LevelQuest = 1
        NameQuest = "ZombieQuest"
        NameMon = "Zombie"
        CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
        CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
    elseif MyLevel == 975 or MyLevel <= 999 then
        Mon = "Vampire"
        LevelQuest = 2
        NameQuest = "ZombieQuest"
        NameMon = "Vampire"
        CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
        CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
    elseif MyLevel == 1000 or MyLevel <= 1049 then
        Mon = "Snow Trooper"
        LevelQuest = 1
        NameQuest = "SnowMountainQuest"
        NameMon = "Snow Trooper"
        CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
        CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
    elseif MyLevel == 1050 or MyLevel <= 1099 then
        Mon = "Winter Warrior"
        LevelQuest = 2
        NameQuest = "SnowMountainQuest"
        NameMon = "Winter Warrior"
        CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
        CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
    elseif MyLevel == 1100 or MyLevel <= 1124 then
        Mon = "Lab Subordinate"
        LevelQuest = 1
        NameQuest = "IceSideQuest"
        NameMon = "Lab Subordinate"
        CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
        CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
    elseif MyLevel == 1125 or MyLevel <= 1174 then
        Mon = "Horned Warrior"
        LevelQuest = 2
        NameQuest = "IceSideQuest"
        NameMon = "Horned Warrior"
        CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
        CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
    elseif MyLevel == 1175 or MyLevel <= 1199 then
        Mon = "Magma Ninja"
        LevelQuest = 1
        NameQuest = "FireSideQuest"
        NameMon = "Magma Ninja"
        CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
        CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
    elseif MyLevel == 1200 or MyLevel <= 1249 then
        Mon = "Lava Pirate"
        LevelQuest = 2
        NameQuest = "FireSideQuest"
        NameMon = "Lava Pirate"
        CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
        CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
    elseif MyLevel == 1250 or MyLevel <= 1274 then
        Mon = "Ship Deckhand"
        LevelQuest = 1
        NameQuest = "ShipQuest1"
        NameMon = "Ship Deckhand"
        CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
        CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
        if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
        end
    elseif MyLevel == 1275 or MyLevel <= 1299 then
        Mon = "Ship Engineer"
        LevelQuest = 2
        NameQuest = "ShipQuest1"
        NameMon = "Ship Engineer"
        CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
        CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
        if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
        end             
    elseif MyLevel == 1300 or MyLevel <= 1324 then
        Mon = "Ship Steward"
        LevelQuest = 1
        NameQuest = "ShipQuest2"
        NameMon = "Ship Steward"
        CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
        CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
        if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
        end
    elseif MyLevel == 1325 or MyLevel <= 1349 then
        Mon = "Ship Officer"
        LevelQuest = 2
        NameQuest = "ShipQuest2"
        NameMon = "Ship Officer"
        CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
        CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
        if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
        end
    elseif MyLevel == 1350 or MyLevel <= 1374 then
        Mon = "Arctic Warrior"
        LevelQuest = 1
        NameQuest = "FrostQuest"
        NameMon = "Arctic Warrior"
        CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
        CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
        if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
        end
    elseif MyLevel == 1375 or MyLevel <= 1424 then
        Mon = "Snow Lurker"
        LevelQuest = 2
        NameQuest = "FrostQuest"
        NameMon = "Snow Lurker"
        CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
        CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
    elseif MyLevel == 1425 or MyLevel <= 1449 then
        Mon = "Sea Soldier"
        LevelQuest = 1
        NameQuest = "ForgottenQuest"
        NameMon = "Sea Soldier"
        CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
        CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
    elseif MyLevel >= 1450 then
        Mon = "Water Fighter"
        LevelQuest = 2
        NameQuest = "ForgottenQuest"
        NameMon = "Water Fighter"
        CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
        CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
    end
elseif World3 then
    if MyLevel == 1500 or MyLevel <= 1524 then
        Mon = "Pirate Millionaire"
        LevelQuest = 1
        NameQuest = "PiratePortQuest"
        NameMon = "Pirate Millionaire"
        CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
        CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
    elseif MyLevel == 1525 or MyLevel <= 1574 then
        Mon = "Pistol Billionaire"
        LevelQuest = 2
        NameQuest = "PiratePortQuest"
        NameMon = "Pistol Billionaire"
        CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
        CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
    elseif MyLevel == 1575 or MyLevel <= 1599 then
        Mon = "Dragon Crew Warrior"
        LevelQuest = 1
        NameQuest = "AmazonQuest"
        NameMon = "Dragon Crew Warrior"
        CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
        CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)
    elseif MyLevel == 1600 or MyLevel <= 1624 then 
        Mon = "Dragon Crew Archer"
        NameQuest = "AmazonQuest"
        LevelQuest = 2
        NameMon = "Dragon Crew Archer"
        CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
        CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
    elseif MyLevel == 1625 or MyLevel <= 1649 then
        Mon = "Female Islander"
        NameQuest = "AmazonQuest2"
        LevelQuest = 1
        NameMon = "Female Islander"
        CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
        CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
    elseif MyLevel == 1650 or MyLevel <= 1699 then 
        Mon = "Giant Islander"
        NameQuest = "AmazonQuest2"
        LevelQuest = 2
        NameMon = "Giant Islander"
        CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
        CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)
    elseif MyLevel == 1700 or MyLevel <= 1724 then
        Mon = "Marine Commodore"
        LevelQuest = 1
        NameQuest = "MarineTreeIsland"
        NameMon = "Marine Commodore"
        CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
        CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
    elseif MyLevel == 1725 or MyLevel <= 1774 then
        Mon = "Marine Rear Admiral"
        NameMon = "Marine Rear Admiral"
        NameQuest = "MarineTreeIsland"
        LevelQuest = 2
        CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
        CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
    elseif MyLevel == 1775 or MyLevel <= 1799 then
        Mon = "Fishman Raider"
        LevelQuest = 1
        NameQuest = "DeepForestIsland3"
        NameMon = "Fishman Raider"
        CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
        CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
    elseif MyLevel == 1800 or MyLevel <= 1824 then
        Mon = "Fishman Captain"
        LevelQuest = 2
        NameQuest = "DeepForestIsland3"
        NameMon = "Fishman Captain"
        CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
        CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
    elseif MyLevel == 1825 or MyLevel <= 1849 then
        Mon = "Forest Pirate"
        LevelQuest = 1
        NameQuest = "DeepForestIsland"
        NameMon = "Forest Pirate"
        CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
        CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
    elseif MyLevel == 1850 or MyLevel <= 1899 then
        Mon = "Mythological Pirate"
        LevelQuest = 2
        NameQuest = "DeepForestIsland"
        NameMon = "Mythological Pirate"
        CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
        CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
    elseif MyLevel == 1900 or MyLevel <= 1924 then
        Mon = "Jungle Pirate"
        LevelQuest = 1
        NameQuest = "DeepForestIsland2"
        NameMon = "Jungle Pirate"
        CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
        CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
    elseif MyLevel == 1925 or MyLevel <= 1974 then
        Mon = "Musketeer Pirate"
        LevelQuest = 2
        NameQuest = "DeepForestIsland2"
        NameMon = "Musketeer Pirate"
        CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
        CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
    elseif MyLevel == 1975 or MyLevel <= 1999 then
        Mon = "Reborn Skeleton"
        LevelQuest = 1
        NameQuest = "HauntedQuest1"
        NameMon = "Reborn Skeleton"
        CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
        CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
    elseif MyLevel == 2000 or MyLevel <= 2024 then
        Mon = "Living Zombie"
        LevelQuest = 2
        NameQuest = "HauntedQuest1"
        NameMon = "Living Zombie"
        CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
        CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
    elseif MyLevel == 2025 or MyLevel <= 2049 then
        Mon = "Demonic Soul"
        LevelQuest = 1
        NameQuest = "HauntedQuest2"
        NameMon = "Demonic Soul"
        CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
        CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
    elseif MyLevel == 2050 or MyLevel <= 2074 then
        Mon = "Posessed Mummy"
        LevelQuest = 2
        NameQuest = "HauntedQuest2"
        NameMon = "Posessed Mummy"
        CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
    elseif MyLevel == 2075 or MyLevel <= 2099 then
        Mon = "Peanut Scout"
        LevelQuest = 1
        NameQuest = "NutsIslandQuest"
        NameMon = "Peanut Scout"
        CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
    elseif MyLevel == 2100 or MyLevel <= 2124 then
        Mon = "Peanut President"
        LevelQuest = 2
        NameQuest = "NutsIslandQuest"
        NameMon = "Peanut President"
        CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
    elseif MyLevel == 2125 or MyLevel <= 2149 then
        Mon = "Ice Cream Chef"
        LevelQuest = 1
        NameQuest = "IceCreamIslandQuest"
        NameMon = "Ice Cream Chef"
        CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
    elseif MyLevel == 2150 or MyLevel <= 2199 then
        Mon = "Ice Cream Commander"
        LevelQuest = 2
        NameQuest = "IceCreamIslandQuest"
        NameMon = "Ice Cream Commander"
        CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
    elseif MyLevel == 2200 or MyLevel <= 2224 then
        Mon = "Cookie Crafter"
        LevelQuest = 1
        NameQuest = "CakeQuest1"
        NameMon = "Cookie Crafter"
        CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
        CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
    elseif MyLevel == 2225 or MyLevel <= 2249 then
        Mon = "Cake Guard"
        LevelQuest = 2
        NameQuest = "CakeQuest1"
        NameMon = "Cake Guard"
        CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
        CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
    elseif MyLevel == 2250 or MyLevel <= 2274 then
        Mon = "Baking Staff"
        LevelQuest = 1
        NameQuest = "CakeQuest2"
        NameMon = "Baking Staff"
        CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
        CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
    elseif MyLevel == 2275 or MyLevel <= 2299 then
        Mon = "Head Baker"
        LevelQuest = 2
        NameQuest = "CakeQuest2"
        NameMon = "Head Baker"
        CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
        CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
    elseif MyLevel == 2300 or MyLevel <= 2324 then
        Mon = "Cocoa Warrior"
        LevelQuest = 1
        NameQuest = "ChocQuest1"
        NameMon = "Cocoa Warrior"
        CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
        CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
    elseif MyLevel == 2325 or MyLevel <= 2349 then
        Mon = "Chocolate Bar Battler"
        LevelQuest = 2
        NameQuest = "ChocQuest1"
        NameMon = "Chocolate Bar Battler"
        CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
        CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
    elseif MyLevel == 2350 or MyLevel <= 2374 then
        Mon = "Sweet Thief"
        LevelQuest = 1
        NameQuest = "ChocQuest2"
        NameMon = "Sweet Thief"
        CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
        CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
    elseif MyLevel == 2375 or MyLevel <= 2399 then
        Mon = "Candy Rebel"
        LevelQuest = 2
        NameQuest = "ChocQuest2"
        NameMon = "Candy Rebel"
        CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
        CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
    elseif MyLevel == 2400 or MyLevel <= 2424 then
        Mon = "Candy Pirate"
        LevelQuest = 1
        NameQuest = "CandyQuest1"
        NameMon = "Candy Pirate"
        CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
        CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
    elseif MyLevel == 2425 or MyLevel <= 2449 then
        Mon = "Snow Demon"
        LevelQuest = 2
        NameQuest = "CandyQuest1"
        NameMon = "Snow Demon"
        CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
        CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
    elseif MyLevel == 2450 or MyLevel <= 2474 then
        Mon = "Isle Outlaw"
        LevelQuest = 1
        NameQuest = "TikiQuest1"
        NameMon = "Isle Outlaw"
        CFrameQuest = CFrame.new(-16545.9355, 55.6863556, -173.230499)
        CFrameMon = CFrame.new(-16120.6035, 116.520554, -103.038849)
    elseif MyLevel == 2475 or MyLevel <= 2499 then
        Mon = "Island Boy"
        LevelQuest = 2
        NameQuest = "TikiQuest1"
        NameMon = "Island Boy"
        CFrameQuest = CFrame.new(-16545.9355, 55.6863556, -173.230499)
        CFrameMon = CFrame.new(-16751.3125, 121.226219, -264.015015)
    elseif MyLevel == 2500 or MyLevel <= 2524 then
        Mon = "Sun-kissed Warrio"
        LevelQuest = 1
        NameQuest = "TikiQuest2"
        NameMon = "Sun-kissed Warrio"
        CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
        CFrameMon = CFrame.new(-16294.6748, 32.7874393, 1062.4856)
    elseif MyLevel >= 2525 then
        Mon = "Isle Champion"
        LevelQuest = 2
        NameQuest = "TikiQuest2"
        NameMon = "Isle Champion"
        CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
        CFrameMon = CFrame.new(-16933.2129, 93.3503036, 999.450989)
    end
end
end
function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end
    function Teleport() 
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end       

function CheckItem(ah)
for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
    if v.Name == ah then
        return v
    end
end
end

function UpdateIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
                if v.Name ~= "Sea" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
for i,v in pairs(game:GetService'Players':GetChildren()) do
    pcall(function()
        if not isnil(v.Character) then
            if ESPPlayer then
                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Character.Head)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Character.Head
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    if v.Team == game.Players.LocalPlayer.Team then
                        name.TextColor3 = Color3.new(0,255,0)
                    else
                        name.TextColor3 = Color3.new(255,0,0)
                    end
                else
                    v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
                end
            else
                if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateChestChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if string.find(v.Name,"Chest") then
            if ChestESP then
                if string.find(v.Name,"Chest") then
                    if not v:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Name == "Chest1" then
                            name.TextColor3 = Color3.fromRGB(109, 109, 109)
                            name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest2" then
                            name.TextColor3 = Color3.fromRGB(173, 158, 21)
                            name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest3" then
                            name.TextColor3 = Color3.fromRGB(85, 255, 255)
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateDevilChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if DevilFruitESP then
            if string.find(v.Name, "Fruit") then   
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                end
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end
    end)
end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name == "Flower2" or v.Name == "Flower1" then
            if FlowerESP then 
                if not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    if v.Name == "Flower1" then 
                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == "Flower2" then
                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end   
    end)
end
end
function UpdateRealFruitChams() 
for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 0, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 174, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(251, 255, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
end

function UpdateIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
                if v.Name ~= "Sea" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end
function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
for i,v in pairs(game:GetService'Players':GetChildren()) do
    pcall(function()
        if not isnil(v.Character) then
            if ESPPlayer then
                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Character.Head)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Character.Head
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    if v.Team == game.Players.LocalPlayer.Team then
                        name.TextColor3 = Color3.new(0,255,0)
                    else
                        name.TextColor3 = Color3.new(255,0,0)
                    end
                else
                    v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
                end
            else
                if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateChestChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if string.find(v.Name,"Chest") then
            if ChestESP then
                if string.find(v.Name,"Chest") then
                    if not v:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Name == "Chest1" then
                            name.TextColor3 = Color3.fromRGB(109, 109, 109)
                            name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest2" then
                            name.TextColor3 = Color3.fromRGB(173, 158, 21)
                            name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest3" then
                            name.TextColor3 = Color3.fromRGB(85, 255, 255)
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateDevilChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if DevilFruitESP then
            if string.find(v.Name, "Fruit") then   
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                end
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end
    end)
end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name == "Flower2" or v.Name == "Flower1" then
            if FlowerESP then 
                if not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    if v.Name == "Flower1" then 
                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == "Flower2" then
                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end   
    end)
end
end
function UpdateRealFruitChams() 
for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 0, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 174, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(251, 255, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
end

function UpdateIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
                if v.Name ~= "Sea" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end
function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
for i,v in pairs(game:GetService'Players':GetChildren()) do
    pcall(function()
        if not isnil(v.Character) then
            if ESPPlayer then
                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Character.Head)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Character.Head
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    if v.Team == game.Players.LocalPlayer.Team then
                        name.TextColor3 = Color3.new(0,255,0)
                    else
                        name.TextColor3 = Color3.new(255,0,0)
                    end
                else
                    v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
                end
            else
                if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateChestChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if string.find(v.Name,"Chest") then
            if ChestESP then
                if string.find(v.Name,"Chest") then
                    if not v:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Name == "Chest1" then
                            name.TextColor3 = Color3.fromRGB(109, 109, 109)
                            name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest2" then
                            name.TextColor3 = Color3.fromRGB(173, 158, 21)
                            name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest3" then
                            name.TextColor3 = Color3.fromRGB(85, 255, 255)
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateDevilChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if DevilFruitESP then
            if string.find(v.Name, "Fruit") then   
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                end
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end
    end)
end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name == "Flower2" or v.Name == "Flower1" then
            if FlowerESP then 
                if not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    if v.Name == "Flower1" then 
                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == "Flower2" then
                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end   
    end)
end
end
function UpdateRealFruitChams() 
for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 0, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 174, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(251, 255, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
end

spawn(function()
while wait() do
    pcall(function()
        if MobESP then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("MobEap") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")
                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = "MobEap"
                        BillboardGui.AlwaysOnTop = true
                        BillboardGui.LightInfluence = 1.000
                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
                        TextLabel.Parent = BillboardGui
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.Size = UDim2.new(0, 200, 0, 50)
                        TextLabel.Font = Enum.Font.GothamBold
                        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.Text.Size = 35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                    v.MobEap.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                end
            end
        else
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild("MobEap") then
                    v.MobEap:Destroy()
                end
            end
        end
    end)
end
end)

spawn(function()
while wait() do
    pcall(function()
        if SeaESP then
            for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("Seaesps") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")
                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = "Seaesps"
                        BillboardGui.AlwaysOnTop = true
                        BillboardGui.LightInfluence = 1.000
                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
                        TextLabel.Parent = BillboardGui
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.Size = UDim2.new(0, 200, 0, 50)
                        TextLabel.Font = Enum.Font.GothamBold
                        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.Text.Size = 35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                    v.Seaesps.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                end
            end
        else
            for i,v in pairs (game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if v:FindFirstChild("Seaesps") then
                    v.Seaesps:Destroy()
                end
            end
        end
    end)
end
end)

spawn(function()
while wait() do
    pcall(function()
        if NpcESP then
            for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("NpcEspes") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = "NpcEspes"
                        BillboardGui.AlwaysOnTop = true
                        BillboardGui.LightInfluence = 1.000
                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                        TextLabel.Parent = BillboardGui
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.Size = UDim2.new(0, 200, 0, 50)
                        TextLabel.Font = Enum.Font.GothamBold
                        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.Text.Size = 35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                    v.NpcEspes.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                end
            end
        else
            for i,v in pairs (game:GetService("Workspace").NPCs:GetChildren()) do
                if v:FindFirstChild("NpcEspes") then
                    v.NpcEspes:Destroy()
                end
            end
        end
    end)
end
end)
function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        _G.NotAutoEquip = true
        wait(.5)
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
        wait(.1)
        _G.NotAutoEquip = false
    end
end

function EquipWeapon(ToolSe)
    if not _G.NotAutoEquip then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait(.1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end
end

function BTP(P)
repeat wait(1)
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
until (P.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500
end

function TPB(CFgo)

local tween_s = game:service"TweenService"
local info = TweenInfo.new((game:GetService("Workspace").Boats.VehicleSeat.CFrame.Position - CFgo.Position).Magnitude/350, Enum.EasingStyle.Linear)
tween = tween_s:Create(game:GetService("Workspace").Boats.VehicleSeat, info, {CFrame = CFgo})
tween:Play()

local tweenfunc = {}

function tweenfunc:Stop()
    tween:Cancel()
end

return tweenfunc
end

function EquipAllWeapon()
    pcall(function()
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA('Tool') and not (v.Name == "Summon Sea Beast" or v.Name == "Water Body" or v.Name == "Awakening") then
                local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
                wait(1)
            end
        end
    end)
end

function TelePPlayer(P)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
end

function TP1(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        Speed = 5000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
        Speed = 600
    elseif Distance < 500 then
        Speed = 300
    elseif Distance < 750 then
        Speed = 250
    elseif Distance >= 1000 then
        Speed = 200
    end
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end

function topos(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        Speed = 5000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
        Speed = 600
    elseif Distance < 500 then
        Speed = 300
    elseif Distance < 750 then
        Speed = 250
    elseif Distance >= 1000 then
        Speed = 200
    end
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end

function topos1(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        Speed = 5000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
        Speed = 600
    elseif Distance < 500 then
        Speed = 300
    elseif Distance < 750 then
        Speed = 300
    elseif Distance >= 1000 then
        Speed = 300
    end
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end

function BTP(P1)
game.Players.LocalPlayer.Character.Head:Destroy()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end

getgenv().ToTargets = function(p)
task.spawn(function()
    pcall(function()
        if game:GetService("Players").LocalPlayer:DistanceFromCharacter(p.Position) <= 250 then 
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p
        elseif not game.Players.LocalPlayer.Character:FindFirstChild("Root")then 
            local K = Instance.new("Part",game.Players.LocalPlayer.Character)
            K.Size = Vector3.new(1,0.5,1)
            K.Name = "Root"
            K.Anchored = true
            K.Transparency = 1
            K.CanCollide = false
            K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
        end
        local U = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude
        local z = game:service("TweenService")
        local B = TweenInfo.new((p.Position-game.Players.LocalPlayer.Character.Root.Position).Magnitude/300,Enum.EasingStyle.Linear)
        local S,g = pcall(function()
        local q = z:Create(game.Players.LocalPlayer.Character.Root,B,{CFrame = p})
        q:Play()
    end)
    if not S then 
        return g
    end
    game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        if S and game.Players.LocalPlayer.Character:FindFirstChild("Root") then 
            pcall(function()
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 20 then 
                    spawn(function()
                        pcall(function()
                            if (game.Players.LocalPlayer.Character.Root.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150 then 
                                game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            else 
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Players.LocalPlayer.Character.Root.CFrame
                            end
                        end)
                    end)
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 10 and(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 20 then 
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 10 then 
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                end
            end)
        end
    end)
end)
end


task.spawn(function()
while task.wait() do
    pcall(function()
        if _G.AutoFarmNearest and AutoFarmNearestMagnet or SelectMag and _G.BringMonster then
            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
                    if InMyNetWork(v.HumanoidRootPart) then
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid.JumpPower = 0
                        v.Humanoid.WalkSpeed = 0
                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                        v.HumanoidRootPart.Transparency = 1
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        v.Humanoid:ChangeState(11)
                        v.Humanoid:ChangeState(14)
                    end
                end
            end
        end
    end)
end
end)

spawn(function()
game:GetService("RunService").Heartbeat:Connect(function()
    if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.RipIndraKill or _G.Darkbeard or _G.Soulreaper or _G.AutoFarmCandy or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.AutoSeaBest or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Terrorshark or _G.shark or _G.Piranha or _G.fishcrew or AutoFarm_Meterial or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.QuestSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.AutoKai or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.RaidPirate or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or KillPlayer or KillPlayerSpam or _G.SeaBeasts1 then
        if not game:GetService("Workspace"):FindFirstChild("LOL") then
            local LOL = Instance.new("Part")
            LOL.Name = "LOL"
            LOL.Parent = game.Workspace
            LOL.Anchored = true
            LOL.Transparency = 1
            LOL.Size = Vector3.new(30,-0.5,30)
        elseif game:GetService("Workspace"):FindFirstChild("LOL") then
            game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.6, 0)
        end
    else
        if game:GetService("Workspace"):FindFirstChild("LOL") then
            game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
        end
    end
end)
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.RipIndraKill or _G.Darkbeard or _G.Soulreaper or _G.AutoFarmCandy or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Terrorshark or _G.shark or _G.Piranha or _G.fishcrew or AutoFarm_Meterial or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.QuestSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.RaidPirate or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest == true or KillPlayer == true or KillPlayerSpam == true or _G.SeaBeasts1 == true then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.RipIndraKill or _G.Darkbeard or _G.Soulreaper or _G.AutoFarmCandy or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Terrorshark or _G.shark or _G.Piranha or _G.fishcrew or AutoFarm_Meterial or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.QuestSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.AutoKai or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.RaidPirate or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest == true or KillPlayer == true or KillPlayerSpam == true or _G.SeaBeasts1 == true then
                for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false    
                    end
                end
            end
        end)
    end)
end)

spawn(function()
    while wait() do
        if _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.RipIndraKill or _G.Darkbeard or _G.Soulreaper or _G.AutoFarmCandy or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Terrorshark or _G.shark or _G.Piranha or _G.fishcrew or AutoFarm_Meterial or _G.Autoheart or _G.Autodoughking or _G.d or _G.Autowaden or _G.Autogay or _G.AutoObservationHakiV2 or _G.AutoFarmMaterial or _G.AutoFarmNearest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoRaidPirate or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory == true or KillPlayer == true or KillPlayerSpam == true or _G.SeaBeasts1 == true then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
            end)
        end    
    end
end)

spawn(function()
game:GetService("RunService").RenderStepped:Connect(function()
    if _G.AutoClick or Fastattack then
         pcall(function()
            game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):ClickButton1(Vector2.new(851,158),game:GetService("Workspace").Camera.CFrame)
        end)
    end
end)
end)

function StopTween(target)
    if not target then
        _G.StopTween = true
        wait()
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
    end
end

spawn(function()
    pcall(function()
        while wait() do
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then 
                        SelectWeaponGun = v.Name
                    end
                end
            end
        end
    end)
end)

game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

function CheckColorRipIndra()
    mmb = {}
    for r, v in next, game:GetService("Workspace").Map["Boat Castle"].Summoner.Circle:GetChildren() do
        if v:IsA("Part") and v:FindFirstChild("Part") and v.Part.BrickColor.Name == "Dark stone grey" then
            mmb[v.BrickColor.Name] = v
        end
    end
    return mmb
end
function ActivateColor(cw)
    haki = {["Hot pink"] = "Winter Sky", ["Really red"] ="Pure Red", ["Oyster"] = "Snow White"}
    runnay = haki[cw]
    if runnay then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", runnay)
    end
end
function AutoActiveColorRip_Indra()
    for r, v in pairs(CheckColorRipIndra()) do
        ActivateColor(r)
        topos(v.CFrame)
        firetouchinterest(v.TouchInterest)
    end
end

_G.TargTrial = nil
function targettrial()
if _G.TargTrial ~= nil then return end
local a = nil
local b = 450
for i,v in pairs(game.Players:GetChildren()) do
    c = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if c <= b and v ~= game.Players.LocalPlayer then
        b = c 
        a = v
    end
end
if a == nil then return end
if _G.TargTrial ~= nil then return end
_G.TargTrial = a
end


function CheckPirateBoat()
local cocailon = {"PirateBasic", "PirateBrigade"}
for r, v in next, game:GetService("Workspace").Enemies:GetChildren() do
    if table.find(cocailon, v.Name) and v:FindFirstChild("Health") and v.Health.Value > 0 then
        return v
    end
end
end

function StoreFruit()
for i,v in pairs(thelocal.Backpack:GetChildren()) do
    if v:IsA("Tool") and string.find(v.Name, "Fruit") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v:GetAttribute("OriginalName"),v)
    end
end
end

getgenv().NoDieEffect = true
if getgenv().NoDieEffect then
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
    game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
    game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
end
end


-- [remove effect Combat]
local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
local RigControllerR = getupvalues(RigController)[2]
local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
local cooldownfastattack = tick()

local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
local RigControllerR = getupvalues(RigController)[2]
local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
local cooldownfastattack = tick()

function CurrentWeapon()
local ac = CombatFrameworkR.activeController
local ret = ac.blades[1]
if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
pcall(function()
    while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
end)
if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
return ret
end

function AttackFunction()

local ac = CombatFrameworkR.activeController

if ac and ac.equipped then

    for indexincrement = 1, 1 do

        local bladehit = getAllBladeHits(60)

        if #bladehit > 0 then

            local AcAttack8 = debug.getupvalue(ac.attack, 5)

            local AcAttack9 = debug.getupvalue(ac.attack, 6)

            local AcAttack7 = debug.getupvalue(ac.attack, 4)

            local AcAttack10 = debug.getupvalue(ac.attack, 7)

            local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9

            local NumberAc13 = AcAttack7 * 798405

            (function()

                NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776

                AcAttack8 = math.floor(NumberAc12 / AcAttack9)

                AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9

            end)()

            AcAttack10 = AcAttack10 + 1

            debug.setupvalue(ac.attack, 5, AcAttack8)

            debug.setupvalue(ac.attack, 6, AcAttack9)

            debug.setupvalue(ac.attack, 4, AcAttack7)

            debug.setupvalue(ac.attack, 7, AcAttack10)

            for k, v in pairs(ac.animator.anims.basic) do

                v:Play(0.01,0.01,0.01)

            end                 

            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 

                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))

                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)

                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "") 

            end

        end

    end

end

end


--Hard fast

local plr = game.Players.LocalPlayer
local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]

function GetCurrentBlade() 
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if not ret then return end
    while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
    return ret
end

function AttackNoCD()
    if not Auto_Farm_Bounty and not Auto_Farm_Fruit or Mix_Farm then
        if not Auto_Raid then
            local AC = CbFw2.activeController
            for i = 1, 1 do 
                local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                    plr.Character,
                    {plr.Character.HumanoidRootPart},
                    60
                )
                local cac = {}
                local hash = {}
                for k, v in pairs(bladehit) do
                    if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                        table.insert(cac, v.Parent.HumanoidRootPart)
                        hash[v.Parent] = true
                    end
                end
                bladehit = cac
                if #bladehit > 0 then
                    local u8 = debug.getupvalue(AC.attack, 5)
                    local u9 = debug.getupvalue(AC.attack, 6)
                    local u7 = debug.getupvalue(AC.attack, 4)
                    local u10 = debug.getupvalue(AC.attack, 7)
                    local u12 = (u8 * 798405 + u7 * 727595) % u9
                    local u13 = u7 * 798405
                    (function()
                        u12 = (u12 * u9 + u13) % 1099511627776
                        u8 = math.floor(u12 / u9)
                        u7 = u12 - u8 * u9
                    end)()
                    u10 = u10 + 1
                    debug.setupvalue(AC.attack, 5, u8)
                    debug.setupvalue(AC.attack, 6, u9)
                    debug.setupvalue(AC.attack, 4, u7)
                    debug.setupvalue(AC.attack, 7, u10)
                    pcall(function()
                        if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                            AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
                            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                            game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
                        end
                    end)
                end
            end
        end
    end
end

function getAllBladeHitsPlayers(Sizes)
local Hits = {}
local Client = game.Players.LocalPlayer
local Characters = game:GetService("Workspace").Characters:GetChildren()
for i=1,#Characters do local v = Characters[i]
    local Human = v:FindFirstChildOfClass("Humanoid")
    if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
        table.insert(Hits,Human.RootPart)
    end
end
return Hits
end

loadstring(game:HttpGet(("https://raw.githubusercontent.com/REDzHUB/LibraryV2/main/redzLib")))()
MakeWindow({
Hub = {
Title = "Xester HUB",
Animation = "Xester Hub"
},
Key = {
KeySystem = false,
Title = "Key System",
Description = "",
KeyLink = "",
Keys = {"1234"},
Notifi = {
  Notifications = true,
  CorrectKey = "Running the Script...",
  Incorrectkey = "The key is incorrect",
  CopyKeyLink = "Copied to Clipboard"
}
}
})
local Main = MakeTab({Name = "Main"})

local Qs = MakeTab({Name = "Quest And Item"})

local Fr = MakeTab({Name = "Fruit + Dungeon"})

local Vs = MakeTab({Name = "Visual"})

local Se = MakeTab({Name = "Sea Event"})

local Lp = MakeTab({Name = "Local Player"})

local Tv = MakeTab({Name = "Travel"})

local Sh = MakeTab({Name = "Shop"})

local Ph = MakeTab({Name = "Player + Hunter"})

local Rc = MakeTab({Name = "Race"})

local St = MakeTab({Name = "Settings"})

local Dropdown = AddDropdown(Main, {
Name = "Select Weapon",
Options = {"Melee","Sword","Fruit","Gun"},
Default = "",
Callback = function(Value)
_G.SelectWeapon = Value
end
})

task.spawn(function()
while wait() do
    pcall(function()
        if _G.SelectWeapon == "Melee" then
            for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.ToolTip == "Melee" then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                        _G.SelectWeapon = v.Name
                    end
                end
            end
        elseif _G.SelectWeapon == "Sword" then
            for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.ToolTip == "Sword" then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                        _G.SelectWeapon = v.Name
                    end
                end
            end
        elseif _G.SelectWeapon == "Gun" then
            for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.ToolTip == "Gun" then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                        _G.SelectWeapon = v.Name
                    end
                end
            end
        elseif _G.SelectWeapon == "Fruit" then
            for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.ToolTip == "Blox Fruit" then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                        _G.SelectWeapon = v.Name
                    end
                end
            end
        end
    end)
end
end)

local section = AddSection(Main, {"Farm"})

local Toggle = AddToggle(Main, {
Name = "Farm Level",
Default = false,
Callback = function(Value)
_G.AutoFarm = Value
    StopTween(_G.AutoFarm)
end
})

spawn(function()
    while wait() do
        if _G.AutoFarm then
            pcall(function()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    StartMagnet = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    StartMagnet = false
                    CheckQuest()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
                            BTP(CFrameQuest)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 1500 then
                            TP1(CFrameQuest)
                        else
                            TP1(CFrameQuest)
                        end
                    end
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 20 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()                                            
                                            PosMon = v.HumanoidRootPart.CFrame
                                            TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                                            StartMagnet = true
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        StartMagnet = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                end
                            end
                        end
                    else
                        TP1(CFrameMon)
                        StartMagnet = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                         TP1(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(15,10,2))
                        end
                    end
                end
            end)
        end
    end
end)

local Toggle = AddToggle(Main, {
Name = "Farm Neares",
Default = false,
Callback = function(Value)
_G.AutoFarmNearest = Value
    StopTween(_G.AutoFarmNearest)
end
})

spawn(function()
while wait() do
    if _G.AutoFarmNearest then
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if v.Name and v:FindFirstChild("Humanoid") then
                if v.Humanoid.Health > 0 then
                    repeat wait()
                      EquipWeapon(_G.SelectWeapon)
                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                            local args = {
                                [1] = "Buso"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                           end
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,PosY,0))
                        v.HumanoidRootPart.CanCollide = false
                        Fastattack = true
                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                        game:GetService("VirtualUser"):CaptureController()
                           game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672), game.Workspace.CurrentCamera.CFrame)
                           AutoFarmNearestMagnet = true
                           PosMon = v.HumanoidRootPart.CFrame
                    until not _G.AutoFarmNearest or not v.Parent or v.Humanoid.Health <= 0 
                    AutoFarmNearestMagnet = false
                    Fastattack = false
                end
            end
        end
    end
end
end)
local section = AddSection(Main, {"Bone"})

local Toggle = AddToggle(Main, {
Name = "Farm Bone",
Default = false,
Callback = function(Value)
_G.Auto_Bone = Value
    StopTween(_G.Auto_Bone)
end
})

spawn(function()
    while wait() do 
        local boneframe = CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625)
        if _G.Auto_Bone and World3 then
        pcall(function()
                if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - boneframe.Position).Magnitude > 2000 then
                        BTP(boneframe)
                        wait(.1)
                        for i = 1, 8 do
                            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(boneframe)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")	
                            wait(.1)		
                        end
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - boneframe.Position).Magnitude < 2000 then
                        wait(6)
                        TP1(boneframe)
                    end
                else
                    wait(6)
                    TP1(boneframe)
                end
                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false          
                                      MonFarm = v.Name                
                                    PosMon = v.HumanoidRootPart.CFrame
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,PosY,0))
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                until not _G.Auto_Bone or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    topos(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375))
                    for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                        if v.Name == "Reborn Skeleton" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        elseif v.Name == "Living Zombie" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        elseif v.Name == "Demonic Soul" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        elseif v.Name == "Posessed Mummy" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        end
                    end
                end
                end)
        end
    end
end)    

local Toggle = AddToggle(Main, {
Name = "Farm Hallow Scythe",
Default = false,
Callback = function(Value)
_G.AutoFarmBossHallow = Value
    StopTween(_G.AutoFarmBossHallow)
end
})

spawn(function()
    while wait() do
        if _G.AutoFarmBossHallow then
            spawn(function()
                if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                    _G.Auto_Random_Bone = true
                elseif game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if string.find(v.Name , "Soul Reaper") then
                            repeat task.wait()
                                EquipWeapon(_G.SelectWeapon)
                                AutoHaki()
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                topos(v.HumanoidRootPart.CFrame*Pos)
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                v.HumanoidRootPart.Transparency = 1
                                sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                            until v.Humanoid.Health <= 0 or _G.AutoFarmBossHallow == false
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                    _G.Auto_Bone = false
                    StopTween(_G.Auto_Bone)
                    _G.Auto_Random_Bone = false
                    repeat topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                    EquipWeapon("Hallow Essence")
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                    else
                        if CheckItem("Hallow Scythe") then
                            _G.Auto_Bone = false
                            StopTween(_G.Auto_Bone)
                            _G.Auto_Random_Bone = false
                            end
                        end
                    end
            end)
        end
    end
end)

local Toggle = AddToggle(Main, {
Name = "Random Bone ",
Default = false,
Callback = function(Value)
_G.Auto_Random_Bone = Value
end
})

spawn(function()
        while wait(.1) do
            if _G.Auto_Random_Bone then    
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
            end
        end
end)

local section = AddSection(Main, {"Chest"})

local Toggle = AddToggle(Main, {
Name = "Farm Chest Tween",
Default = false,
Callback = function(Value)
AutoFarmChest = Value
    StopTween(AutoFarmChest)
end
})

_G.MagnitudeAdd = 0
spawn(function()
while wait() do 
    if AutoFarmChest then
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
            if v.Name:find("Chest") then
                if game:GetService("Workspace"):FindFirstChild(v.Name) then
                    if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000+_G.MagnitudeAdd then
                        repeat wait()
                            if game:GetService("Workspace"):FindFirstChild(v.Name) then
                                topos(v.CFrame)
                            end
                        until AutoFarmChest == false or not v.Parent
                        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                        _G.MagnitudeAdd = _G.MagnitudeAdd+1500
                        break
                    end
                end
            end
        end
    end
end
end)

local Toggle = AddToggle(Main, {
Name = "Farm Chest Bypass",
Default = false,
Callback = function(Value)
_G.ChestBypass = Value
end
})

spawn(function()
while wait() do
if _G.ChestBypass then
pcall(function()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
  if string.find(v.Name, "Chest") then
      print(v.Name)
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
      wait(.15)
  end
end
game.Players.LocalPlayer.Character.Head:Destroy()
for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
if string.find(v.Name, "Chest") and v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
wait()
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
end
end
end)
end
end
end)

spawn(function()
while task.wait() do
if _G.ChestBypass then
    local ohString1 = "SetTeam"
    local ohString2 = "Pirates"
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(ohString1, ohString2)
 end
end
end)

local section = AddSection(Main, {"Boss"})

if World1 then
local Dropdown = AddDropdown(Main, {
Name = "Select Boss",
Options = {"The Gorilla King","Bobby","Yeti","Mob Leader","Vice Admiral","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Saber Expert"},
Default = "",
Callback = function(Value)
_G.SelectBoss = Value
end
})
end

if World2 then
local Dropdown = AddDropdown(Main, {
Name = "Select Boss",
Options = {"Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Cursed Captain","Darkbeard","Order","Awakened Ice Admiral","Tide Keeper"},
Default = "",
Callback = function(Value)
_G.SelectBoss = Value
end
})
end

if World3 then
local Dropdown = AddDropdown(Main, {
Name = "Select Boss",
Options = {"Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","rip_indra True Form","Longma","Soul Reaper","Cake Queen"},
Default = "",
Callback = function(Value)
_G.SelectBoss = Value
end
})
end

local Toggle = AddToggle(Main, {
Name = "Farm Boss",
Default = false,
Callback = function(Value)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
    _G.AutoFarmBoss = Value
    StopTween(_G.AutoFarmBoss)
end
})

spawn(function()
    while wait() do
        if _G.AutoFarmBoss then
            spawn(function()
                if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == _G.SelectBoss then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,PosY,0))
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until not _G.AutoFarmBoss or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                    end
                end
            end)
        end
    end
end)

local section = AddSection(Main, {"Material"})

if World1 then
    MaterialList = {
      "Magma Ore","Angel Wings","Leather","Scrap Metal","Radioactive Material"
    } elseif World2 then
    MaterialList = {
      "Mystic Droplet","Magma Ore","Leather","Scrap Metal","Demonic Wisp","Vampire Fang","Radioactive Material"
    } elseif World3 then
    MaterialList = {
      "Leather","Scrap Metal","Vampire Fang","Conjured Cocoa","Dragon Scale","Gunpowder","Fish Tail","Mini Tusk","Radioactive Material"
    }
    end

local Dropdown = AddDropdown(Main, {
Name = "Select Material",
Options = MaterialList,
Default = "",
Callback = function(Value)
_G.SelectMaterial = Value
end
})

local Toggle = AddToggle(Main, {
Name = "Farm Material",
Default = false,
Callback = function(Value)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
    AutoFarm_Meterial = Value
    StopTween(AutoFarm_Meterial)
end
})

spawn(function()
    while wait() do 
        if AutoFarm_Meterial then
            MaterialMon()
            spawn(function()
                if game:GetService("Workspace").Enemies:FindFirstChild(MMon) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == MMon then
                           if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                               repeat task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    MakoriGayMag = true
                                    _G.PosMon = v.HumanoidRootPart.CFrame
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    FastAttack = true
                                until not AutoFarm_Meterial or not v.Parent or v.Humanoid.Health <= 0
                                FastAttack = false
                                MakoriGayMag = false
                            end
                        end
                    end
                else
                if ((MPos).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
                    topos(MPos)
                else
                    BTP(MPos)
                    end
                end
            end)
        end
    end
end)    

local section = AddSection(Main, {"Mastery"})

local Slider = AddSlider(Main, {
Name = "Kill %Health [Mastery]",
MinValue = 0,
MaxValue = 100,
Default = 30,
Increase = 5,
Callback = function(Value)
_G.Kill_At = Value
end
})



local Dropdown = AddDropdown(Main, {
Name = "Select Tool",
Options = {"Blox Fruit","Gun"},
Default = "Blox Fruit",
Callback = function(Value)
   _G.SelectMas = Value
end
})

local Toggle = AddToggle(Main, {
Name = "Farm Mastery",
Default = false,
Callback = function(Value)
      if _G.SelectMas == "Blox Fruit" then
      _G.AutoFarmFruitMastery = Value
    StopTween(_G.AutoFarmFruitMastery)
            if _G.AutoFarmFruitMastery == false then
                UseSkill = false 
            end
    elseif _G.SelectMas == "Gun" then
              _G.AutoFarmGunMastery = Value
    StopTween(_G.AutoFarmGunMastery)
    end
end
})

spawn(function()
    while wait() do
        if _G.AutoFarmFruitMastery then
            pcall(function()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    Magnet = false
                    UseSkill = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    StartMasteryFruitMagnet = false
                    UseSkill = false
                    CheckQuest()
                    repeat wait()
                        TP1(CFrameQuest)
                    until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarmFruitMastery
                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        wait(0.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                        wait(0.1)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        HealthMs = v.Humanoid.MaxHealth * _G.Kill_At/100
                                        repeat task.wait()
                                            if v.Humanoid.Health <= HealthMs then
                                                AutoHaki()
                                                EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                                                TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
                                                v.HumanoidRootPart.CanCollide = false
                                                PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                UseSkill = true
                                            else           
                                                UseSkill = false 
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,PosY,0))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                            end
                                            StartMasteryFruitMagnet = true
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until not _G.AutoFarmFruitMastery or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        UseSkill = false
                                        StartMasteryFruitMagnet = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                end
                            end
                        end
                    else
                        TP1(CFrameMon)
                        StartMasteryFruitMagnet = false   
                        UseSkill = false 
                        local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon) 
                        if Mob then
                            TP1(Mob.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                        else
                            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                task.wait()
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                            end
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if UseSkill then
            pcall(function()
                CheckQuest()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                        MasBF = game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                        MasBF = game:GetService("Players").LocalPlayer.Backpack[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                        if _G.SkillZ and _G.HoldZ then 
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                         
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                            wait(_G.HoldZ)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                        end
                        if _G.SkillX and _G.HoldX then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                            wait(_G.HoldX)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                        end
                        if _G.SkillC and _G.HoldC then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                            wait(_G.HoldC)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                        end
                        if _G.SkillV and _G.HoldV then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                            wait(_G.HoldV)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if UseSkill then
                for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                    if v.Name == "NotificationTemplate" then
                        if string.find(v.Text,"Skill locked!") then
                            v:Destroy()
                        end
                    end
                end
            end
        end)
    end)
end)

spawn(function()
    pcall(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            if UseSkill then
                local args = {
                    [1] = PosMonMasteryFruit.Position
                }
                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
            end
        end)
    end)
end)

spawn(function()
pcall(function()
    while wait() do
        if _G.AutoFarmGunMastery then
            local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
            if not string.find(QuestTitle, NameMon) then
                Magnet = false                                      
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
            end
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                StartMasteryGunMagnet = false
                CheckQuest()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
                            BTP(CFrameQuest)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 1500 then
                            TP1(CFrameQuest)
                        else
                            TP1(CFrameQuest)
                        end
                    else
                        TP1(CFrameQuest)
                    end
                if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                    wait(1.2)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                end
            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                CheckQuest()
                if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                    pcall(function()
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == Mon then
                                repeat task.wait()
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        HealthMin = v.Humanoid.MaxHealth * _G.Kill_At/100
                                        if v.Humanoid.Health <= HealthMin then                                                
                                            EquipWeapon(SelectWeaponGun)
                                            TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(2,2,1)
                                            v.Head.CanCollide = false                                                
                                            local args = {
                                                [1] = v.HumanoidRootPart.Position,
                                                [2] = v.HumanoidRootPart
                                            }
                                            game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                            wait(.2)
                                            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                            wait(.2)
                                            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        else
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false               
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,PosY,0))
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        end
                                        StartMasteryGunMagnet = true 
                                        PosMonMasteryGun = v.HumanoidRootPart.CFrame
                                    else
                                        StartMasteryGunMagnet = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                until v.Humanoid.Health <= 0 or not _G.AutoFarmGunMastery or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                StartMasteryGunMagnet = false
                            end
                        end
                    end)
                else
                   TP1(CFrameMon)
                    StartMasteryGunMagnet = false
                    local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon) 
                    if Mob then
                        TP1(Mob.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                    else
                        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                            game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                            task.wait()
                            game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                        end
                    end
                end 
            end
        end
    end
end)
end)

spawn(function()
pcall(function()
    if _G.AutoFarmGunMastery then
        while wait() do
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then
                        SelectWeaponGun = v.Name
                    end
                end
            end
        end
    end
end)
end)

local section = AddSection(Main, {"Setting Farm"})

local Slider = AddSlider(Main, {
Name = "Hold Z",
MinValue = 0,
MaxValue = 5,
Default = 0,
Increase = 1,
Callback = function(Value)
_G.HoldZ = Value
end
})

local Slider = AddSlider(Main, {
Name = "Hold X",
MinValue = 0,
MaxValue = 5,
Default = 0,
Increase = 1,
Callback = function(Value)
_G.HoldX = Value
end
})

local Slider = AddSlider(Main, {
Name = "Hold C",
MinValue = 0,
MaxValue = 5,
Default = 0,
Increase = 1,
Callback = function(Value)
_G.HoldC = Value
end
})

local Slider = AddSlider(Main, {
Name = "Hold V",
MinValue = 0,
MaxValue = 5,
Default = 0,
Increase = 1,
Callback = function(Value)
_G.HoldV = Value
end
})

local Toggle = AddToggle(Main, {
Name = "Auto Use Skill Z",
Default = false,
Callback = function(Value)
      _G.SkillZ = Value
end
})

local Toggle = AddToggle(Main, {
Name = "Auto Use Skill X",
Default = false,
Callback = function(Value)
      _G.SkillX = Value
end
})

local Toggle = AddToggle(Main, {
Name = "Auto Use Skill C",
Default = false,
Callback = function(Value)
      _G.SkillC = Value
end
})

local Toggle = AddToggle(Main, {
Name = "Auto Use Skill V",
Default = false,
Callback = function(Value)
      _G.HoldV = Value
end
})

local Toggle = AddToggle(Qs, {
Name = "Auto Elite Hunter",
Default = false,
Callback = function(Value)
              _G.AutoElitehunter = Value
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
    StopTween(_G.AutoElitehunter)
end
})

spawn(function()
    while wait() do
        if _G.AutoElitehunter and World3 then
            spawn(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,PosY,0))
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until _G.AutoElitehunter == false or v.Humanoid.Health <= 0 or not v.Parent
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end                    
                    end
                else
                    if _G.AutoEliteHunterHop and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." then
                        hop()
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                    end
                end
            end)
        end
    end
end)

local Toggle = AddToggle(Qs, {
Name = "Auto Elite Hunter Hop",
Default = false,
Callback = function(Value)
_G.AutoEliteHunterHop = Value
end
})

local section = AddSection(Qs, {"Dough Boss"})

local Toggle = AddToggle(Qs, {
Name = "Farm Kata Boss",
Default = false,
Callback = function(Value)
    _G.AutoDoughtBoss = Value
    StopTween(_G.AutoDoughtBoss)
end
})

spawn(function()
    while wait() do
        pcall(function()
            if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41)) - 500)
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),40,41)) - 500)
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),41,41)) - 500)
            end
        end)
    end
end)

spawn(function()
    while wait() do
    local doughframe = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375)
        if _G.AutoDoughtBoss then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cake Prince" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,PosY,0))
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                    else
                        if KillMob == 0 then
                        end                    
                        if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false 
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                PosMon = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name                
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,PosY,0))
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                            until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or KillMob == 0
                                        end
                                    end
                                end
                            else
                                topos(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(2,20,2)) 
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard").HumanoidRootPart.CFrame * CFrame.new(2,20,2)) 
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff") then
                                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                        else
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker") then
                                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                            end
                                        end
                                    end
                                end                       
                            end
                        else
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                                topos(game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)    

local section = AddSection(Qs, {"Dragon Trident"})

local Toggle = AddToggle(Qs, {
Name = "Take Dragon Trident",
Default = false,
Callback = function(Value)
    _G.Auto_Dragon_Trident = Value
    StopTween(_G.Auto_Dragon_Trident)
end
})

spawn(function()
    while wait() do
        if _G.Auto_Dragon_Trident then
            spawn(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Tide Keeper" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,PosY,0))
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until not _G.Auto_Dragon_Trident or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                    end
                end
            end)
        end
    end
end)

AddButton(Qs, {
Name = "Hop Sever",
Callback = function()
Hop()
end
})

local section = AddSection(Qs, {"Rip Indra"})

local Toggle = AddToggle(Qs, {
Name = "Auto Active Color",
Default = false,
Callback = function(Value)
    _G.A = Value
end
})

spawn(function()
    pcall(function()
        if _G.A then
            repeat wait()
                AutoActiveColorRip_Indra()
            until not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra")
        end
    end)
end)

local Toggle = AddToggle(Qs, {
Name = "Auto Rip Indra",
Default = false,
Callback = function(Value)
    _G.RipIndraKill = Value
    StopTween(_G.RipIndraKill)
end
})

spawn(function()
    pcall(function()
        while wait() do
            if _G.RipIndraKill and game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == ("rip_indra True Form" or v.Name == "rip_indra") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            repeat task.wait()
                                pcall(function()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,PosY,0))
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                end)
                            until not _G.RipIndraKill or v.Humanoid.Health <= 0
                        end
                    end
                else
                    topos(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
                end
            end
        end
    end)
end) 

local section = AddSection(Qs, {"Musketeer Hat"})

local Toggle = AddToggle(Qs, {
Name = "Auto Musketeer Hat",
Default = false,
Callback = function(Value)
    _G.AutoMusketeerHat = Value
    StopTween(_G.AutoMusketeerHat)
end
})

spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.AutoMusketeerHat then
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Forest Pirate" then
                                    repeat task.wait()
                                        pcall(function()
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,PosY,0))
                                            v.HumanoidRootPart.CanCollide = false
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            MusketeerHatMon = v.HumanoidRootPart.CFrame
                                            StartMagnetMusketeerhat = true
                                        end)
                                    until _G.AutoMusketeerHat == false or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    StartMagnetMusketeerhat = false
                                end
                            end
                        else
                            StartMagnetMusketeerhat = false
                            topos(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                        end
                    else
                        topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                        if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant" then
                                    OldCFrameElephant = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        pcall(function()
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.CFrame = OldCFrameElephant
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        end)
                                    until _G.AutoMusketeerHat == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                        end
                    else
                        topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                        if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
                    topos(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                end
            end
        end
    end)
end)

local section = AddSection(Qs, {"Melee V2"})

local Toggle = AddToggle(Qs, {
Name = "Taken Superhuman [Beta]",
Default = false,
Callback = function(Value)
    _G.AutoSuperhuman = Value
end
})

local Toggle = AddToggle(Qs, {
Name = "Taken DeathStep [Beta]",
Default = false,
Callback = function(Value)
    _G.AutoDeathStep = Value
end
})

local Toggle = AddToggle(Qs, {
Name = "Taken Sharkman Karate [Beta]",
Default = false,
Callback = function(Value)
    _G.AutoSharkman = Value
end
})

local Toggle = AddToggle(Qs, {
Name = "Taken Electric Claw [Beta]",
Default = false,
Callback = function(Value)
    _G.AutoElectricClaw = Value
    StopTween(_G.AutoElectricClaw)
end
})

local Toggle = AddToggle(Qs, {
Name = "Taken Dragon Talon [Beta]",
Default = false,
Callback = function(Value)
    _G.AutoDragonTalon = Value
end
})

local Toggle = AddToggle(Qs, {
Name = "Taken GodHuman [Beta]",
Default = false,
Callback = function(Value)
    _G.Auto_God_Human = Value
end
})

spawn(function()
    pcall(function()
        while wait() do 
            if _G.AutoSuperhuman then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000 then
                    UnEquipWeapon("Combat")
                    wait(.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                end   
                if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                    _G.SelectWeapon = "Superhuman"
                end  
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
                        _G.SelectWeapon = "Black Leg"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
                        _G.SelectWeapon = "Electro"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
                        _G.SelectWeapon = "Fishman Karate"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
                        _G.SelectWeapon = "Dragon Claw"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                        UnEquipWeapon("Black Leg")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                        UnEquipWeapon("Black Leg")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                        UnEquipWeapon("Electro")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                        UnEquipWeapon("Electro")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                        UnEquipWeapon("Fishman Karate")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                        UnEquipWeapon("Fishman Karate")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                        UnEquipWeapon("Dragon Claw")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                        UnEquipWeapon("Dragon Claw")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                    end 
                end
            end
        end
    end)
end)

spawn(function()
    while wait() do wait()
        if _G.AutoDeathStep then
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                    _G.SelectWeapon = "Death Step"
                end  
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                    _G.SelectWeapon = "Death Step"
                end  
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
                    _G.SelectWeapon = "Black Leg"
                end 
            else 
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
            end
        end
    end
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoSharkman then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
                        topos(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365))
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                    else 
                        Ms = "Tide Keeper [Lv. 1475] [Boss]"
                        if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then   
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Ms then    
                                    OldCFrameShark = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.Head.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameShark
                                        topos(v.HumanoidRootPart.CFrame*CFrame.new(2,20,2))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoSharkman == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
                                end
                            end
                        else
                            topos(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202))
                            wait(3)
                        end
                    end
                else 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait() do 
            if _G.AutoElectricClaw then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electric Claw") then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                        _G.SelectWeapon = "Electric Claw"
                    end  
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                        _G.SelectWeapon = "Electric Claw"
                    end  
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399 then
                        _G.SelectWeapon = "Electro"
                    end 
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                end
            end
            if _G.AutoElectricClaw then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                        if _G.AutoFarm == false then
                            repeat task.wait()
                                topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                            until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                            wait(2)
                            repeat task.wait()
                                topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                            until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
                            wait(1)
                            repeat task.wait()
                                topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                            until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                        elseif _G.AutoFarm == true then
                            _G.AutoFarm = false
                            wait(1)
                            repeat task.wait()
                                topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                            until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                            wait(2)
                            repeat task.wait()
                                topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                            until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
                            wait(1)
                            repeat task.wait()
                                topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                            until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            _G.SelectWeapon = "Electric Claw"
                            wait(.1)
                            _G.AutoFarm = true
                        end
                    end
                end
            end
        end
    end)
end)

spawn(function()
    while wait() do
        if _G.AutoDragonTalon then
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                    _G.SelectWeapon = "Dragon Talon"
                end  
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                    _G.SelectWeapon = "Dragon Talon"
                end  
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 then
                    _G.SelectWeapon = "Dragon Claw"
                end 
            else 
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
            end
        end
    end
end)

spawn(function()
while task.wait() do
    if _G.Auto_God_Human then
        pcall(function()
            if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true) == 1 then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and game.Players.LocalPlayer.Character:FindFirstChild("Superhuman").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                    end
                else
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Notification", 
                        Text = "Not Have Superhuman" ,
                        Icon = "http://www.roblox.com/asset/?id=13918363155",
                        Duration = 2.5
                    })
                end
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true) == 1 then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                    end
                else
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Notification", 
                        Text = "Not Have Death Step" ,
                        Icon = "http://www.roblox.com/asset/?id=13918363155",
                        Duration = 2.5
                    })
                end
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 1 then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                    end
                else
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Notification", 
                        Text = "Not Have SharkMan Karate" ,
                        Icon = "http://www.roblox.com/asset/?id=13918363155",
                        Duration = 2.5
                    })
                end
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) == 1 then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                    end
                else
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Notification", 
                        Text = "Not Have Electric Claw" ,
                        Icon = "http://www.roblox.com/asset/?id=13918363155",
                        Duration = 2.5
                    })
                end
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true) == 1 then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >= 400 then
                        if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true), "Bring") then
                            game.StarterGui:SetCore("SendNotification", {
                                Title = "Notification", 
                                Text = "Not Have Enough Material" ,
                                Icon = "http://www.roblox.com/asset/?id=13918363155",
                                Duration = 2.5
                            })
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
                        end
                    end
                else
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Notification", 
                        Text = "Not Have Dragon Talon" ,
                        Icon = "http://www.roblox.com/asset/?id=13918363155",
                        Duration = 2.5
                    })
                end
            else
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
            end
        end)
    end
end
end)

local section = AddSection(Qs, {"Haki Color"})

local Toggle = AddToggle(Qs, {
Name = "Buy Haki Color",
Default = false,
Callback = function(Value)
    _G.AutoBuyEnchancementColour = Value
end
})

spawn(function()
    while wait() do
        if _G.AutoBuyEnchancementColour then
            local args = {
                [1] = "ColorsDealer",
                [2] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            if _G.AutoBuyEnchancementColour_Hop and _G.AutoBuyEnchancementColour and not World1 then
                wait(10)
                Hop()
            end
        end 
    end
end)

local section = AddSection(Fr, {"Fruit"})

local Toggle = AddToggle(Fr, {
Name = "Random Fruit",
Default = false,
Callback = function(Value)
    _G.Random = Value
end
})

spawn(function()
pcall(function()
    while wait(.1) do
        if _G.Random then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
        end 
    end
end)
end)

local Toggle = AddToggle(Fr, {
Name = "Store Fruit",
Default = false,
Callback = function(Value)
    _G.AutoStoreFruit = Value
end
})

spawn(function()
while wait() do
    if _G.AutoStoreFruit then
        pcall(function()
            StoreFruit()
        end)
    end
end
end)

local Toggle = AddToggle(Fr, {
Name = "Teleport to Fruit [Beta]",
Default = false,
Callback = function(Value)
    _G.Tele = Value
end
})

spawn(function()
    while wait(2) do
        if _G.Tele then
            for i,v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    topos(v.Handle.CFrame)
                end
            end
        end
    end
end)

local Toggle = AddToggle(Fr, {
Name = "Grab Fruit [75% Kick]",
Default = false,
Callback = function(Value)
    _G.Grabfruit = Value
end
})

spawn(function()
    while wait(.1) do
        if _G.Grabfruit then
            for i,v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                end
            end
        end
    end
end)

local section = AddSection(Fr, {"Raid"})

local Chips = {"Flame","Ice","Quake","Light","Dark","Spider","Rumble","Magma","Buddha","Sand","Phoenix","Dough"}

local Dropdown = AddDropdown(Fr, {
Name = "Select Chip",
Options = Chips,
Default = "",
Callback = function(Value)
SelectChip = Value
end
})

local Toggle = AddToggle(Fr, {
Name = "Buy Chip",
Default = false,
Callback = function(Value)
    _G.Auto_Buy_Chips_Dungeon = Value
end
})

spawn(function()
while wait() do
    if _G.Auto_Buy_Chips_Dungeon then
        pcall(function()
            local args = {
                [1] = "RaidsNpc",
                [2] = "Select",
                [3] = SelectChip
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
    end
end
end)

local Toggle = AddToggle(Fr, {
Name = "Start Raid",
Default = false,
Callback = function(Value)
    _G.Auto_StartRaid = Value
end
})

spawn(function()
    while wait(.1) do
        pcall(function()
            if _G.Auto_StartRaid then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if World2 then
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                        elseif World3 then
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                        end
                    end
                end
            end
        end)
    end
end)

local Toggle = AddToggle(Fr, {
Name = "Kill Arua",
Default = false,
Callback = function(Value)
    _G.concubu = Value
end
})

spawn(function()
while wait() do
    if _G.concubu then
        pcall(function()
            for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    repeat task.wait()
                        sethiddenproperty(game:GetService('Players').LocalPlayer,"SimulationRadius",math.huge)
                        v.Humanoid.Health = 0
                        v.HumanoidRootPart.CanCollide = false
                    until not _G.concubu or not v.Parent or v.Humanoid.Health <= 0
                end
            end
        end)
    end
end
end)

local Toggle = AddToggle(Fr, {
Name = "Next Island",
Default = false,
Callback = function(Value)
    _G.Auto_Dungeon = Value
    StopTween(_G.Auto_Dungeon)
end
})

local islandNames = {"Island 5", "Island 4", "Island 3", "Island 2", "Island 1"}
spawn(function()
while wait() do
    if _G.Auto_Dungeon then
        if not game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
            for _, islandName in ipairs(islandNames) do
                local island = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild(islandName)
                if island then
                    topos1(island.CFrame * CFrame.new(0, 70, 100))
                    break
                end
            end
        end
    end
end
end)

local Toggle = AddToggle(Fr, {
Name = "Awakener Fruit",
Default = true,
Callback = function(Value)
    _G.Auto_Awakener = Value
end
})

spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Auto_Awakener then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
            end
        end
    end)
end)

local Toggle = AddToggle(Vs, {
Name = "Esp Player",
Default = false,
Callback = function(a)
    ESPPlayer = a
    UpdatePlayerChams()
end
})

local Toggle = AddToggle(Vs, {
Name = "ESP Chest",
Default = false,
Callback = function(a)
    ChestESP = a
    UpdateChestChams() 
end
})

local Toggle = AddToggle(Vs, {
Name = "ESP Flower",
Default = false,
Callback = function(a)
    FlowerESP = a
    UpdateFlowerChams() 
end
})

local Toggle = AddToggle(Vs, {
Name = "ESP Fruit",
Default = false,
Callback = function(a)
            DevilFruitESP = a
    while DevilFruitESP do wait()
        UpdateDevilChams() 
    end
end
})

spawn(function()
    while wait(2) do
        if FlowerESP then
            UpdateFlowerChams() 
        end
        if DevilFruitESP then
            UpdateDevilChams() 
        end
        if ChestESP then
            UpdateChestChams() 
        end
        if ESPPlayer then
            UpdatePlayerChams()
        end
    end
end)

local section = AddSection(Lp, {"Stat"})

local Slider = AddSlider(Lp, {
Name = "Stat",
MinValue = 1,
MaxValue = 100,
Default = 3,
Increase = 1,
Callback = function(Value)
_G.SelectStat = Value
end
})

local Toggle = AddToggle(Lp, {
Name = "Auto Stat Melee",
Default = false,
Callback = function(Value)
_G.Auto_Stats_Melee = Value
end
})

local Toggle = AddToggle(Lp, {
Name = "Auto Defense",
Default = false,
Callback = function(Value)
_G.Auto_Stats_Defense = Value
end
})

local Toggle = AddToggle(Lp, {
Name = "Auto Sword",
Default = false,
Callback = function(Value)
_G.Auto_Stats_Sword = Value
end
})

local Toggle = AddToggle(Lp, {
Name = "Auto Gun",
Default = false,
Callback = function(Value)
_G.Auto_Stats_Gun = Value
end
})

local Toggle = AddToggle(Lp, {
Name = "Auto Demon Fruit",
Default = false,
Callback = function(Value)
_G.Auto_Stats_Devil_Fruit = Value
end
})

spawn(function()
while wait() do
    if _G.Auto_Stats_Devil_Fruit then
        local args = {
            [1] = "AddPoint",
            [2] = "Demon Fruit",
            [3] = _G.SelectStat
        }
                    
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
end
end)

spawn(function()
while wait() do
    if _G.Auto_Stats_Gun then
        local args = {
            [1] = "AddPoint",
            [2] = "Gun",
            [3] = _G.SelectStat
        }
                    
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
end
end)


spawn(function()
while wait() do
    if _G.Auto_Stats_Sword then
        local args = {
            [1] = "AddPoint",
            [2] = "Sword",
            [3] = _G.SelectStat
        }
                    
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
end
end)

spawn(function()
while wait() do
    if _G.Auto_Stats_Defense then
        local args = {
            [1] = "AddPoint",
            [2] = "Defense",
            [3] = _G.SelectStat
        }
                    
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
end
end)


spawn(function()
while wait() do
    if _G.Auto_Stats_Melee then
        local args = {
            [1] = "AddPoint",
            [2] = "Melee",
            [3] = _G.SelectStat
        }
                    
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
end
end)

local section = AddSection(Lp, {"Fake"})

local Toggle = AddToggle(Lp, {
Name = "Fake Stat",
Default = true,
Callback = function(Value)
   _G.EnabledStat = Value
end
})

AddTextBox(Lp, {
Name = "Fake Level",
Default = "Level",
PlaceholderText = "",
ClearText = true,
Callback = function(Value)
if _G.EnabledStat then
        game:GetService("Players")["LocalPlayer"].Data.Level.Value = tonumber(Value)
     end
end
})

AddTextBox(Lp, {
Name = "Fake Exp",
Default = "Exp",
PlaceholderText = "",
ClearText = true,
Callback = function(Value)
if _G.EnabledStat then
        game:GetService("Players")["LocalPlayer"].Data.Exp.Value = tonumber(Value)
    end
 end
})

AddTextBox(Lp, {
Name = "Fake Beli",
Default = "Beli",
PlaceholderText = "",
ClearText = true,
Callback = function(Value)
if _G.EnabledStat then
        game:GetService("Players")["LocalPlayer"].Data.Beli.Value = tonumber(Value)
    end
end
})

AddTextBox(Lp, {
Name = "Fake Fragments",
Default = "Fragments",
PlaceholderText = "",
ClearText = true,
Callback = function(Value)
if _G.EnabledStat then
        game:GetService("Players")["Localplayer"].Data.Fragments.Value = tonumber(Value)
    end
end
})

local Playerslist = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
table.insert(Playerslist,v.Name)
end

local Dropdown = AddDropdown(Ph, {
Name = "Select Player",
Options = Playerslist,
Default = "",
Callback = function(Value)
_G.SelectPly = Value
end
})

local section = AddSection(Ph, {"Farm Status"})



local Toggle = AddToggle(Ph, {
Name = "Teleport Player",
Default = false,
Callback = function(Value)
_G.TeleportPly = Value
    pcall(function()
        if _G.TeleportPly then
            repeat topos(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame) wait() until _G.TeleportPly == false
        end
        StopTween(_G.TeleportPly)
    end)
end
})

local Toggle = AddToggle(Ph, {
Name = "AimBot",
Default = false,
Callback = function(Value)
_G.Aimbot_Gun = Value
        _G.Aimbot_Skill = Value
end
})

local Toggle = AddToggle(Ph, {
Name = "Aimbot Skill Nearest",
Default = false,
Callback = function(Value)
AimSkillNearest = Value
end
})

local Toggle = AddToggle(Ph, {
Name = "Auto Enabled PvP",
Default = false,
Callback = function(Value)
_G.EnabledPvP = Value
end
})

spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.EnabledPvP then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                end
            end
        end
    end)
end)

local Toggle = AddToggle(Ph, {
Name = "Safe Mode",
Default = false,
Callback = function(Value)
_G.Safe_Mode = Value
    StopTween(_G.Safe_Mode)
end
})

spawn(function()
    pcall(function()
        while wait() do
            if _G.Safe_Mode then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
    end)
end)

local Toggle = AddToggle(Ph, {
Name = "Kill Player",
Default = false,
Callback = function(Value)
_G.Auto_Kill_Ply = Value
    StopTween(_G.Auto_Kill_Ply)
end
})

spawn(function()
    while wait() do
        if _G.Auto_Kill_Ply then
            pcall(function()
                if _G.SelectPly ~= nil then 
                    if game.Players:FindFirstChild(_G.SelectPly) then
                        if game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWeapon(_G.SelectWeapon)
                                AutoHaki()
                                game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CanCollide = false
                                topos(game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame * CFrame.new(0,5,0))
                                spawn(function()
                                    pcall(function()
                                        if _G.SelectWeapon == SelectWeaponGun then
                                            local args = {
                                                [1] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Position,
                                                [2] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart
                                            }
                                            game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                        else
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        end
                                    end)
                                end)
                            until game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health <= 0 or not game.Players:FindFirstChild(_G.SelectPly) or not _G.Auto_Kill_Ply
                        end
                    end
                end
            end)
        end
    end
end)

spawn(
function()
    while task.wait() do
        if _G.Aimbot_Gun and game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun) then
            pcall(
                function()
                    game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].Cooldown.Value = 0
                    local args = {
                        [1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position,
                        [2] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart
                    }
                    game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(
                        unpack(args)
                    )
                    game:GetService "VirtualUser":CaptureController()
                    game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
                end
            )
        end
    end
end
)
spawn(
function()
    pcall(
        function()
            while task.wait() do
                if
                    _G.Aimbot_Skill and PlayerSelectAimbot ~= nil and
                        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and
                        game.Players.LocalPlayer.Character[
                            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                        ]:FindFirstChild("MousePos")
                 then
                    local args = {
                        [1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position
                    }

                    game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                    ).RemoteEvent:FireServer(unpack(args))
                end
            end
        end
    )
end
)

spawn(
function()
    while wait(.1) do
        pcall(
            function()
                local MaxDistance = math.huge
                for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        local Distance =
                            v:DistanceFromCharacter(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
                        if Distance < MaxDistance then
                            MaxDistance = Distance
                            TargetPlayerAim = v.Name
                        end
                    end
                end
            end
        )
    end
end
)

spawn(
function()
    pcall(
        function()
            game:GetService("RunService").RenderStepped:connect(
                function()
                    if
                        AimSkillNearest and TargetPlayerAim ~= nil and
                            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and
                            game.Players.LocalPlayer.Character[
                                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                            ]:FindFirstChild("MousePos")
                     then
                        local args = {
                            [1] = game:GetService("Players"):FindFirstChild(TargetPlayerAim).Character.HumanoidRootPart.Position
                        }
                        game:GetService("Players").LocalPlayer.Character[
                            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                        ].RemoteEvent:FireServer(unpack(args))
                    end
                end
            )
        end
    )
end
)

AddButton(Tv, {
Name = "Fist Sea",
Callback = function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
end
})

AddButton(Tv, {
Name = "Second Sea",
Callback = function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end
})

AddButton(Tv, {
Name = "Third Sea",
Callback = function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end
})

if World1 then
IslandList = {
            "WindMill",
            "Marine",
            "Middle Town",
            "Jungle",
            "Pirate Village",
            "Desert",
            "Snow Island",
            "MarineFord",
            "Colosseum",
            "Sky Island 1",
            "Sky Island 2",
            "Sky Island 3",
            "Prison",
            "Magma Village",
            "Under Water Island",
            "Fountain City",
            "Shank Room",
            "Mob Island",
}

elseif World2 then
   IslandList = {
    "The Cafe",
    "Frist Spot",
    "Dark Area",
    "Flamingo Mansion",
    "Flamingo Room",
    "Green Zone",
    "Factory",
    "Colossuim",
    "Zombie Island",
    "Two Snow Mountain",
    "Punk Hazard",
    "Cursed Ship",
    "Ice Castle",
    "Forgotten Island",
    "Ussop Island",
    "Mini Sky Island",
   }

elseif World3 then
IslandList = {
    "Mansion",
    "Port Town",
    "Great Tree",
    "Castle On The Sea",
    "MiniSky", 
    "Hydra Island",
    "Floating Turtle",
    "Haunted Castle",
    "Ice Cream Island",
    "Peanut Island",
    "Cake Island",
    "Cocoa Island",
    "Candy Island",
    "Isle Outpost",
   }
end

local Dropdown = AddDropdown(Tv, {
Name = "Select Island",
Options = IslandList,
Default = "",
Callback = function(Value)
_G.SelectIsland = Value
end
})

local Toggle = AddToggle(Tv, {
Name = "Teleport [Tween]",
Default = false,
Callback = function(Value)
_G.TeleportIsland = Value
    if _G.TeleportIsland == true then
        repeat wait()
            if _G.SelectIsland == "WindMill" then
                topos(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
            elseif _G.SelectIsland == "Marine" then
                topos(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
            elseif _G.SelectIsland == "Middle Town" then
                topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
            elseif _G.SelectIsland == "Jungle" then
                topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
            elseif _G.SelectIsland == "Pirate Village" then
                topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
            elseif _G.SelectIsland == "Desert" then
                topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
            elseif _G.SelectIsland == "Snow Island" then
                topos(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
            elseif _G.SelectIsland == "MarineFord" then
                topos(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
            elseif _G.SelectIsland == "Colosseum" then
                topos( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
            elseif _G.SelectIsland == "Sky Island 1" then
                topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
            elseif _G.SelectIsland == "Sky Island 2" then  
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            elseif _G.SelectIsland == "Sky Island 3" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            elseif _G.SelectIsland == "Prison" then
                topos( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
            elseif _G.SelectIsland == "Magma Village" then
                topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
            elseif _G.SelectIsland == "Under Water Island" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            elseif _G.SelectIsland == "Fountain City" then
                topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
            elseif _G.SelectIsland == "Shank Room" then
                topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
            elseif _G.SelectIsland == "Mob Island" then
                topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
            elseif _G.SelectIsland == "The Cafe" then
                topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
            elseif _G.SelectIsland == "Frist Spot" then
                topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
            elseif _G.SelectIsland == "Dark Area" then
                topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
            elseif _G.SelectIsland == "Flamingo Mansion" then
                topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
            elseif _G.SelectIsland == "Flamingo Room" then
                topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
            elseif _G.SelectIsland == "Green Zone" then
                topos( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
            elseif _G.SelectIsland == "Factory" then
                topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
            elseif _G.SelectIsland == "Colossuim" then
                topos( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
            elseif _G.SelectIsland == "Zombie Island" then
                topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
            elseif _G.SelectIsland == "Two Snow Mountain" then
                topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
            elseif _G.SelectIsland == "Punk Hazard" then
                topos(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
            elseif _G.SelectIsland == "Cursed Ship" then
                topos(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
            elseif _G.SelectIsland == "Ice Castle" then
                topos(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
            elseif _G.SelectIsland == "Forgotten Island" then
                topos(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
            elseif _G.SelectIsland == "Ussop Island" then
                topos(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
            elseif _G.SelectIsland == "Mini Sky Island" then
                topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
            elseif _G.SelectIsland == "Great Tree" then
                topos(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
            elseif _G.SelectIsland == "Castle On The Sea" then
                topos(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
            elseif _G.SelectIsland == "MiniSky" then
                topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
            elseif _G.SelectIsland == "Port Town" then
                topos(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
            elseif _G.SelectIsland == "Hydra Island" then
                topos(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
            elseif _G.SelectIsland == "Floating Turtle" then
                topos(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
            elseif _G.SelectIsland == "Mansion" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
            elseif _G.SelectIsland == "Haunted Castle" then
                topos(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
            elseif _G.SelectIsland == "Ice Cream Island" then
                topos(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
            elseif _G.SelectIsland == "Peanut Island" then
                topos(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
            elseif _G.SelectIsland == "Cake Island" then
                topos(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
            elseif _G.SelectIsland == "Cocoa Island" then
                topos(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
            elseif _G.SelectIsland == "Candy Island" then
                topos(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
    elseif _G.SelectIsland == "Isle Outpost" then
            topos(CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625))
            end
        until not _G.TeleportIsland
    end
    StopTween(_G.TeleportIsland)
end
})

local Dropdown = AddDropdown(Tv, {
Name = "Select Island",
Options = IslandList,
Default = "",
Callback = function(Value)
_G.SelectWarp = Value
end
})

AddButton(Tv, {
Name = "Bypass Tp",
Callback = function()
if _G.TeleportWarp == "Manslon" then
            elseif _G.SelectWarp == "WindMill" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Marine" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Middle Town" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Jungle" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Pirate Village" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Desert" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Snow Island" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "MarineFord" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Colosseum" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Sky Island 1" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Prison" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Magma Village" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Under Water Island" then
                wait(.1)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            elseif _G.SelectWarp == "Fountain City" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Shank Room" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1442.16553, 29.8788261, -28.3547478)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Mob Island" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2850.20068, 7.39224768, 5354.99268)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "The Cafe" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Frist Spot" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Dark Area" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Flamingo Mansion" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")  
            elseif _G.SelectWarp == "Flamingo Room" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2284.4140625, 15.152037620544, 875.72534179688)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Green Zone" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")  
            elseif _G.SelectWarp == "Factory" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(424.12698364258, 211.16171264648, -427.54049682617)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")  
            elseif _G.SelectWarp == "Colossuim" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")      
            elseif _G.SelectWarp == "Zombie Island" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint") 
            elseif _G.SelectWarp == "Two Snow Mountain" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")    
            elseif _G.SelectWarp == "Punk Hazard" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Cursed Ship" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(923.40197753906, 125.05712890625, 32885.875)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Ice Castle" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Forgotten Island" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Ussop Island" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Mini Sky Island" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-288.74060058594, 49326.31640625, -35248.59375)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Great Tree" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Castle On The Sea" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5085.23681640625, 316.5072021484375, -3156.202880859375)
            elseif _G.SelectWarp == "MiniSky" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Port Town" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Hydra Island" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5749.7861328125, 611.9736938476562, -276.2497863769531)
            elseif _G.SelectWarp == "Floating Turtle" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Mansion" then
                wait(.1)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Haunted Castle" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Ice Cream Island" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Peanut Island" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Cake Island" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375) 
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Sea to Treats Old" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(508.21466064453125, 25.07753562927246, -12438.2294921875) 
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            elseif _G.SelectWarp == "Cake Island" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1141.0223388671875, 47.25519561767578, -14204.609375) 
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Isle Outpost" then
                wait(.1)
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625) 
                game.Players.LocalPlayer.Character.Head:Destroy()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
             end
end
})

local section = AddSection(Sh, {"Melee V1"})

AddButton(Sh, {
Name = "Dark Step",
Callback = function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
end
})

AddButton(Sh, {
Name = "Electro",
Callback = function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
end
})

AddButton(Sh, {
Name = "Fishman Karate",
Callback = function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
end
})

AddButton(Sh, {
Name = "Dragon Claw",
Callback = function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
end
})

AddButton(Sh, {
Name = "SuperHuman",
Callback = function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
end
})

local section = AddSection(Sh, {"Melee V2"})

AddButton(Sh, {
Name = "Electric Claw",
Callback = function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
end
})

AddButton(Sh, {
Name = "SharkMan Karate",
Callback = function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
end
})

AddButton(Sh, {
Name = "Dragon Talon",
Callback = function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
end
})

AddButton(Sh, {
Name = "God Human",
Callback = function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
end
})

AddButton(Sh, {
Name = "Sanguine Art",
Callback = function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
end
})

local section = AddSection(Rc, {"Sea 2"})

local Toggle = AddToggle(Rc, {
Name = "Quest Bartilo",
Default = false,
Callback = function(Value)
_G.AutoBartilo = Value
    StopTween(_G.AutoBartilo)
end
})

spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.AutoBartilo then
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                        if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                            Ms = "Swan Pirate"
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Ms then
                                    pcall(function()
                                        repeat task.wait()
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()
                                            v.HumanoidRootPart.Transparency = 1
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))													
                                            PosMonBarto =  v.HumanoidRootPart.CFrame
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            AutoBartiloBring = true
                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        AutoBartiloBring = false
                                    end)
                                end
                            end
                        else
                            repeat topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)).Magnitude <= 10
                        end
                    else
                        repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                    end 
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
                        Ms = "Jeremy"
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == Ms then
                                OldCFrameBartlio = v.HumanoidRootPart.CFrame
                                repeat task.wait()
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    v.HumanoidRootPart.Transparency = 1
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.HumanoidRootPart.CFrame = OldCFrameBartlio
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy") then
                        repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                        wait(1)
                        repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                        wait(2)
                    else
                        repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                    repeat topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                end
            end 
        end
    end)
end)

local Toggle = AddToggle(Rc, {
Name = "Quest Evo Race",
Default = false,
Callback = function(Value)
_G.Auto_EvoRace = Value
    StopTween(_G.Auto_EvoRace)
end
})

spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Auto_EvoRace then
                if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
                        topos(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
                        if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.3)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
                                topos(game:GetService("Workspace").Flower1.CFrame)
                            elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
                                topos(game:GetService("Workspace").Flower2.CFrame)
                            elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Zombie" then
                                            repeat task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                PosMonEvo = v.HumanoidRootPart.CFrame
                                                StartEvoMagnet = true
                                            until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_EvoRace == false
                                            StartEvoMagnet = false
                                        end
                                    end
                                else
                                    StartEvoMagnet = false
                                    topos(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
                                end
                            end
                        end)
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                    end
                end
            end
        end
    end)
end)

local Dropdown = AddDropdown(Main, {
Name = "Select Zones",
Options = {"Zone 1","Zone 2","Zone3","Zone 4","Zone 5","Zone 6"},
Default = "",
Callback = function(Value)
_G.SeliZone = Value
end
})    

local Dropdown = AddDropdown(Se, {
Name = "Select Boats",
Options = {"Dinghy","PirateSloop","PirateBrigade","PirateGrandBrigade","Guardian","Lantern","Sleigh","Beast Hunter"},
Default = "",
Callback = function(Value)
_G.SeliBoat = Value
end
})    

local Toggle = AddToggle(Se, {
Name = "Reset Teleport Get Boat",
Default = false,
Callback = function(Value)
_G.AutoGetBoat = Value
end
})

local test = CFrame.new(-16910.877, 9.09559727, 511.908417, 0.205364302, 9.26467578e-08, 0.978685617, 3.70978697e-08, 1, -1.02448972e-07, -0.978685617, 5.73465115e-08, 0.205364302)

spawn(function()
while wait() do
if _G.AutoGetBoat then
  if not game:GetService("Workspace").Boats:FindFirstChild(_G.SeliBoat) then
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - test.Position).Magnitude > 1500 then
      BTP(test)
    else
      topos(test)
    end
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - test.Position).Magnitude < 10 then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat",_G.SeliBoat)
  end
  end
end
end
end)

local Toggle = AddToggle(Se, {
Name = "Start Sea Event ( Tween To Boat)",
Default = false,
Callback = function(Value)
_G.Piranha = Value
StopTween(_G.Piranha)
end
})

spawn(function()
while wait() do
if _G.Piranha then
  if game:GetService("Workspace").Boats:FindFirstChild(_G.SeliBoat) then
    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
      if _G.SeliZone == "Zone 1" then
        repeat task.wait()
          TweenBoat(CFrame.new(-22011.5918, 10.8058004, 1179.71265, -0.123258621, 0.0053267153, 0.992360294, 0.0431754477, 0.999067485, -1.90990912e-09, -0.991434932, 0.0428455994, -0.123373665))
        until not _G.Piranha or game.Players.LocalPlayer.Character.Humanoid.Sit == false or not game:GetService("Workspace").Boats:FindFirstChild(_G.SeliBoat) or not _G.SeliZone == "Zone 1"
      tween:Cancel()
      elseif _G.SeliZone == "Zone 2" then
        repeat task.wait()
          TweenBoat(CFrame.new(-25699.5723, 10.8072624, 2913.84546, -0.762847543, -0.0106694512, 0.646490395, -0.0139849829, 0.999902189, -2.32619701e-09, -0.646427155, -0.00904115848, -0.762922108))
        until not _G.Piranha or game.Players.LocalPlayer.Character.Humanoid.Sit == false or not game:GetService("Workspace").Boats:FindFirstChild(_G.SeliBoat) or not _G.SeliZone == "Zone 2"
      tween:Cancel()
      elseif _G.SeliZone == "Zone 3" then
        repeat task.wait()
          TweenBoat(CFrame.new(-25856.3457, 10.8063221, 12681.5889, -0.635475814, 0.0207145419, 0.771842837, 0.0325795971, 0.999469161, 1.14663889e-09, -0.771433115, 0.0251463298, -0.635813355))
        until not _G.Piranha or game.Players.LocalPlayer.Character.Humanoid.Sit == false or not game:GetService("Workspace").Boats:FindFirstChild(_G.SeliBoat) or not _G.SeliZone == "Zone 3"
      tween:Cancel()
      elseif _G.SeliZone == "Zone 4" then
        repeat task.wait()
          TweenBoat(CFrame.new(-28362.7363, 10.8069887, 15404.2256, -0.672246099, -0.00876620598, 0.74027586, -0.0130390646, 0.999915004, 1.46031298e-10, -0.740212917, -0.00965250377, -0.672303259))
        until not _G.Piranha or game.Players.LocalPlayer.Character.Humanoid.Sit == false or not game:GetService("Workspace").Boats:FindFirstChild(_G.SeliBoat) or not _G.SeliZone == "Zone 4"
      tween:Cancel()
      end
      tween:Cancel()
    end
  end
end
end
end)

local Toggle = AddToggle(Se, {
Name = "Auto Sea Event",
Default = false,
Callback = function(Value)
_G.Piranha = Value
 StopTween(_G.Piranha)
end
})

spawn(function()
while wait() do 
if _G.Piranha and World3 then
  pcall(function()
    if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBasic") then
      for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v.Name == "Piranha" or v.Name == "Fish Crew Member" or v.Name == "Terrorshark" or v.Name == "Shark" then
          if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            repeat task.wait()
              AutoHaki()
              EquipWeapon(_G.SelectWeapon)
              v.HumanoidRootPart.CanCollide = false
              v.Humanoid.WalkSpeed = 0
              v.Head.CanCollide = false 
              game.Players.LocalPlayer.Character.Humanoid.Sit = false
              topos(v.HumanoidRootPart.CFrame * CFrame.new(5,40,10))
              MonFarm = v.Name                
              PosMon = v.HumanoidRootPart.CFrame
            until not _G.Piranha or not v.Parent or v.Humanoid.Health <= 0
          end
        end
      end
    else
      topos(game:GetService("Workspace").Boats[_G.SeliBoat].VehicleSeat.CFrame * CFrame.new(0, 0, 0))
      for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
        if v.Name == "Piranha" then
          topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
        elseif v.Name == "Fish Crew Member" then
          topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
        elseif v.Name == "Terrorshark" then
          topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
        elseif v.Name == "Shark" then
          topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
        end
      end
    end
  end)
end
end
end)

local gg = getrawmetatable(game)
local old = gg.__namecall
setreadonly(gg,false)
gg.__namecall = newcclosure(function(...)
local method = getnamecallmethod()
local args = {...}
if tostring(method) == "FireServer" then
if tostring(args[1]) == "RemoteEvent" then
  if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
    if Skillaimbot then
      args[2] = AimBotSkillPosition
      return old(unpack(args))
    end
  end
end
end
return old(...)
end)

spawn(function()
while wait() do
pcall(function()
  if AutoSkill then
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    task.wait(.1)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    task.wait(.1)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    task.wait(.1)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    task.wait(.1)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    task.wait(.1)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    task.wait(.1)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    task.wait(.1)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
  end
end)
end
end)

spawn(function()
while wait() do
if _G.Piranha and World3 then
  pcall(function()  
    if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBasic") then
      for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
        if v:FindFirstChild("HumanoidRootPart") then
          repeat task.wait()
            AutoHaki()
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
            topos(v.HumanoidRootPart.CFrame * CFrame.new(1,PosC,45))
            EquipAllWeapon()                
            AutoSkill = true
            AimBotSkillPosition = v.HumanoidRootPart
            Skillaimbot = true
          until not _G.Piranha or not v:FindFirstChild("HumanoidRootPart") 
          AutoSkill = false
          Skillaimbot = false                            
        end
      end
    else
      topos(game:GetService("Workspace").Boats[_G.SeliBoat].VehicleSeat.CFrame * CFrame.new(0, 0, 0))
    end
  end)
end
end
end)

local Toggle = AddToggle(Se, {
Name = "Ignore Sea Beast",
Default = false,
Callback = function(Value)
_G.IgnoreSeaBeast = Value
end
})

spawn(function()
while wait() do
pcall(function()
  if _G.Piranha and  not _G.IgnoreSeaBeast then
    PosC = 450
  end
  if _G.Piranha and _G.IgnoreSeaBeast then
    PosC = 4000
  end
end)
end
end)

spawn(function()
while wait() do
if _G.Piranha and World3 then
  pcall(function()
    v = CheckPirateBoat()
    if v or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBasic") then
      repeat task.wait()
        AutoHaki()
        EquipAllWeapon()
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
        TweentoBoat(v.HumanoidRootPart.CFrame * CFrame.new(1,40,45))
        AutoSkill = true
      until not v or v.Health.value < 0 or not FindFirstChild("Health") or _G.Piranha == false
    else
      AutoSkill = false
      topos(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, -1, 0))
    end
  end)
end
end
end)

local Toggle = AddToggle(Se, {
Name = "Teleport To \n Kitsune Island",
Default = false,
Callback = function(Value)
_G.shark = Value
 StopTween(_G.shark)
end
})

spawn(function()
while wait() do
if _G.shark and World3 then
  if game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
    repeat task.wait()
      topos(game.Workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame * CFrame.new(0,40,10))
    until _G.shark == false or not game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
  end
end
end
end)

local Toggle = AddToggle(Se, {
Name = "Auto Spawn \n Kitsune Island",
Default = false,
Callback = function(Value)
_G.Terrorshark = Value
 StopTween(_G.Terrorshark)
end
})

local test = CFrame.new(-16910.877, 9.09559727, 511.908417, 0.205364302, 9.26467578e-08, 0.978685617, 3.70978697e-08, 1, -1.02448972e-07, -0.978685617, 5.73465115e-08, 0.205364302)

spawn(function()
while wait() do
if _G.Terrorshark then
  if not game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
    if not game:GetService("Workspace").Boats:FindFirstChild(_G.SeliBoat) then
      if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - test.Position).Magnitude > 1500 then
        BTP(test)
      else
        topos(test)
      end
      if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - test.Position).Magnitude < 10 then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat",_G.SeliBoat)
      end
    end
    if game:GetService("Workspace").Boats:FindFirstChild(_G.SeliBoat) then
      if game.Players.LocalPlayer.Character.Humanoid.Sit == false and not game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
        topos(game:GetService("Workspace").Boats[_G.SeliBoat].VehicleSeat.CFrame * CFrame.new(0, 0, 0))
      elseif game.Players.LocalPlayer.Character.Humanoid.Sit == true and not game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
        repeat task.wait()
          TweenBoat(CFrame.new(-94250.1953, 51.6453476, -24844.1953, 0.606153309, -0.232819915, 0.760508418, 0.111993507, 0.971654117, 0.208196491, -0.787423372, -0.0410269946, 0.615045667))
        until not _G.Terrorshark or game.Players.LocalPlayer.Character.Humanoid.Sit == false or not game:GetService("Workspace").Boats:FindFirstChild(_G.SeliBoat) or game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
        tween:Cancel()
      end
    end
  elseif game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
    repeat task.wait()
      if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
      topos(game.Workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame * CFrame.new(0,40,10))
    until _G.Terrorshark == false or not game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
  end
end
end
end)

local Toggle = AddToggle(Se, {
Name = "Auto Collect \n Soul Ember",
Default = false,
Callback = function(Value)
_G.fishcrew = Value
 StopTween(_G.fishcrew)
end
})

spawn(function()
while wait() do
if _G.fishcrew and World3 then
  pcall(function()
    if game:GetService("Workspace"):FindFirstChild("AttachedAzureEmber") then
      if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace"):WaitForChild("EmberTemplate"):FindFirstChild("Part").CFrame.Position).Magnitude > 300 then
      topos(game:GetService("Workspace"):WaitForChild("EmberTemplate"):FindFirstChild("Part").CFrame)
      else
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.EmberTemplate.Part.CFrame
      end
    end
  end)
end
end
end)

local Slider = AddSlider(St, {
Name = "Bring Mob",
MinValue = 155,
MaxValue = 400,
Default = 250,
Increase = 1,
Callback = function(Value)
_G.BringMode = Value
end
})

local Slider = AddSlider(St, {
Name = "Farm Distance",
MinValue = 10,
MaxValue = 60,
Default = 20,
Increase = 1,
Callback = function(Value)
PosY = Value
end
})

local Slider = AddSlider(St, {
Name = "Click Delay",
MinValue = 0.05,
MaxValue = 1,
Default = 0.15,
Increase = 0.15,
Callback = function(Value)
_G.FastAttackDelay = Value
end
})

local Toggle = AddToggle(St, {
Name = "Bring Monster",
Default = true,
Callback = function(Value)
_G.BringMonster = Value
end
})

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.BringMonster then
                CheckQuest()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if _G.AutoFarm and StartMagnet and v.Name == Mon and (Mon == "Factory Staff [Lv. 800]" or Mon == "Monkey [Lv. 14]" or Mon == "Dragon Crew Warrior [Lv. 1575]" or Mon == "Dragon Crew Archer [Lv. 1600]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220 then
                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                    elseif _G.AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                    end
                end
            end
        end)
    end
end)

    --//Functions
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.BringMonster then
                CheckQuest()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if _G.AutoFarm and StartMagnet and v.Name == Mon and (Mon == "Factory Staff [Lv. 800]" or Mon == "Monkey [Lv. 14]" or Mon == "Dragon Crew Warrior [Lv. 1575]" or Mon == "Dragon Crew Archer [Lv. 1600]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                        v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                    elseif _G.AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
                        v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                    end
                    if _G.Auto_EvoRace and StartEvoMagnet then
                        if v.Name == "Zombie" and (v.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonEvo
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoBartilo and AutoBartiloBring then
                        if v.Name == "Swan Pirate" and (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBarto
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoFarmFruitMastery and StartMasteryFruitMagnet then
                        if v.Name == "Monkey" then
                            if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif v.Name == "Factory Staff" then
                            if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif v.Name == Mon then
                            if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                    if _G.AutoFarmGunMastery and StartMasteryGunMagnet then
                        if v.Name == "Monkey [Lv. 14]" then
                            if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif v.Name == "Factory Staff [Lv. 800]" then
                            if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif v.Name == Mon then
                            if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                end
            end
        end)
  end
end)

task.spawn(function()
    while task.wait() do
    if _G.BringMonster then
    spawn(function()
      for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
      if not string.find(v.Name,"Boss") and v.Name == MonFarm and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
      if InMyNetWork(v.HumanoidRootPart) then
        if InMyNetWork(v.HumanoidRootPart) then
      v.HumanoidRootPart.CFrame = PosMon
      v.HumanoidRootPart.CanCollide = false
      v.HumanoidRootPart.Size = Vector3.new(1,1,1)
      if v.Humanoid:FindFirstChild("Animator") then
        v.Humanoid.Animator:Destroy()
    end
      end
    end
      end
      end
      end)
    end
end
    end)
    

task.spawn(function()
while true do wait()
    if setscriptable then
        setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
    end
    if sethiddenproperty then
        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
    end
end
end)

--//Bringmob Near
function InMyNetWork(object)
if isnetworkowner then
    return isnetworkowner(object)
else
    if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then 
        return true
    end
    return false
end
end

task.spawn(function()
while task.wait() do
    pcall(function()
        if MakoriGayMag and _G.BringMonster then
            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
                    if InMyNetWork(v.HumanoidRootPart) then
                        v.HumanoidRootPart.CFrame = PosGay
                        v.Humanoid.JumpPower = 0
                        v.Humanoid.WalkSpeed = 0
                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                        v.HumanoidRootPart.Transparency = 1
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        v.Humanoid:ChangeState(11)
                        v.Humanoid:ChangeState(14)
                    end
                end
            end
        end
    end)
end
end)



function InMyNetWork(object)
if isnetworkowner then
    return isnetworkowner(object)
else
    if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then 
        return true
    end
    return false
end
end

spawn(function()
while task.wait() do
    pcall(function()
        if StartMagnet then
            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v.Name == Ms and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
                    v.Humanoid.WalkSpeed = 0
                    v.Humanoid.JumpPower = 0
                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                    v.HumanoidRootPart.CanCollide = false
                    v.Head.CanCollide = false
                    v.HumanoidRootPart.CFrame = PosMon
                    if v.Humanoid:FindFirstChild('Animator') then
                        v.Humanoid.Animator:Destroy()
                    end
                    v.Humanoid:ChangeState(11)
                    v.Humanoid:ChangeState(14)
                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                end
            end
        end
    end)
end
end)



local Toggle = AddToggle(St, {
Name = "BypassTP",
Default = true,
Callback = function(Value)
BypassTP = Value
end
})

local Toggle = AddToggle(St, {
Name = "Fast Attack",
Default = true,
Callback = function(Value)
_G.FastAttackFaiFao = Value
end
})

coroutine.wrap(function()
while task.wait(.1) do
    local ac = CombatFrameworkR.activeController
    if ac and ac.equipped then
        if _G.FastAttackFaiFao then
            AttackFunction()
            if _G.Select_Fast_Attack == "Normal" then
                if tick() - cooldownfastattack > .9 then wait(.1) cooldownfastattack = tick() end
            elseif _G.Select_Fast_Attack == "Fast" then
                if tick() - cooldownfastattack > 1.5 then wait(.01) cooldownfastattack = tick() end
            elseif _G.Select_Fast_Attack == "Slow" then
                if tick() - cooldownfastattack > .3 then wait(.7) cooldownfastattack = tick() end
            end
        elseif _G.FastAttackFaiFao == false then
            if ac.hitboxMagnitude ~= 55 then
                ac.hitboxMagnitude = 55
            end
            ac:attack()
        end
    end
end
end)()

_G.Select_Fast_Attack = "Fast"

_G.FastAttack = true

local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]
spawn(function()
game:GetService("RunService").RenderStepped:Connect(function()
    if _G.FastAttack then
        if typeof(y) == "table" then
            pcall(function()
                CameraShaker:Stop()
                y.activeController.timeToNextAttack = 0
                y.activeController.timeToNextAttack = 0
                y.activeController.hitboxMagnitude = 60
                y.activeController.active = false
                y.activeController.timeToNextBlock = 0
                y.activeController.focusStart = 1655503339.0980349
                y.activeController.increment = 1
                y.activeController.blocking = false
                y.activeController.attacking = false
                y.activeController.humanoid.AutoRotate = true
            end)
        end
    end
end)
end)
spawn(function()
game:GetService("RunService").RenderStepped:Connect(function()
    if _G.FastAttack == true then
        game.Players.LocalPlayer.Character.Stun.Value = 0
        game.Players.LocalPlayer.Character.Busy.Value = false        
    end
end)
end)

local Client = game.Players.LocalPlayer
local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
spawn(function()
    while task.wait() do
        pcall(function()
            if not shared.orl then shared.orl = STOPRL.wrapAttackAnimationAsync end
            if not shared.cpc then shared.cpc = STOP.play end
                STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
                local Hits = STOPRL.getBladeHits(b,c,d)
                if Hits then
                    if _G.FastAttack then
                        STOP.play = function() end
                        a:Play(0.01,0.01,0.01)
                        func(Hits)
                        STOP.play = shared.cpc
                        wait(a.length * 0.5)
                        a:Stop()
                    else
                        a:Play()
                    end
                end
            end
        end)
    end
end)

function GetBladeHit()
local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
local CmrFwLib = CombatFrameworkLib[2]
local p13 = CmrFwLib.activeController
local weapon = p13.blades[1]
if not weapon then 
    return weapon
end
while weapon.Parent ~= game.Players.LocalPlayer.Character do
    weapon = weapon.Parent 
end
return weapon
end
function AttackHit()
local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
local CmrFwLib = CombatFrameworkLib[2]
local plr = game.Players.LocalPlayer
for i = 1, 1 do
    local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(plr.Character,{plr.Character.HumanoidRootPart},60)
    local cac = {}
    local hash = {}
    for k, v in pairs(bladehit) do
        if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
            table.insert(cac, v.Parent.HumanoidRootPart)
            hash[v.Parent] = true
        end
    end
    bladehit = cac
    if #bladehit > 0 then
        pcall(function()
            CmrFwLib.activeController.timeToNextAttack = 0
            CmrFwLib.activeController.attacking = false
            CmrFwLib.activeController.blocking = false
            CmrFwLib.activeController.timeToNextBlock = 0
            CmrFwLib.activeController.increment = 1
            CmrFwLib.activeController.hitboxMagnitude = 120
            CmrFwLib.activeController.focusStart = 0
            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetBladeHit()))
            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
        end)
    end
end
end
spawn(function()
while wait(.1) do
    if _G.FastAttack then
        pcall(function()
            repeat task.wait(_G.FastAttackDelay)
                AttackHit()
            until not _G.FastAttack
        end)
    end
end
end)

local Toggle = AddToggle(St, {
Name = "Hit Mob Near ",
Default = false,
Callback = function(Value)
_G.FastAttack2 = Value
end
})

spawn(function()
while wait(.1) do
    if _G.FastAttack2 then
        pcall(function()
            repeat task.wait(_G.FastAttackDelay)
                AttackNoCD()
            until not _G.FastAttack2
        end)
    end
end
end)

local Toggle = AddToggle(St, {
Name = "Auto Click",
Default = false,
Callback = function(Value)
_G.AutoClick = Value
end
})

local Toggle = AddToggle(St, {
Name = "Auto Haki",
Default = false,
Callback = function(Value)
_G.AUTOHAKI = Value
end
})

spawn(function()
while wait(.1) do
    if _G.AUTOHAKI then 
        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
            local args = {
                [1] = "Buso"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end
end)

local Toggle = AddToggle(St, {
Name = "Remove Dame Text",
Default = false,
Callback = function(Value)
XesterRemovetext = Value
end
})

spawn(function()
    while wait() do
        if XesterRemovetext then
            game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
        else
            XesterRemovetext("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
        end
    end
    end)
    
    local Toggle = AddToggle(St, {
Name = "Remove All Notify",
Default = false,
Callback = function(Value)
RemoveNotify = Value
end
})

spawn(function()
    while wait() do
        if RemoveNotify then
            game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
        else
            game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
        end
    end
end)

local Toggle = AddToggle(St, {
Name = "Auto V4",
Default = false,
Callback = function(Value)
AutoAwakeningRace = Value
end
})

spawn(function()
       while wait() do
           pcall(function()
               if AutoAwakeningRace then
                   game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
                   wait(0.1)
                   game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
               end
           end)
       end
   end)
   
   MinimizeButton({
Image = "",
Size = {40, 40},
Color = Color3.fromRGB(255, 255, 255),
Corner = true,
Stroke = false,
StrokeColor = Color3.fromRGB(255, 0, 0)
})
