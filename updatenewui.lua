local bypass_mode = "Manual"
getgenv().bypass_mode = bypass_mode
getgenv().log_output = false
getgenv().state = Enum.HumanoidStateType.Jumping

local str = nil
local u2 = nil

if bypass_mode == "Automatic" then
	local t1 = {}
	local u4 = true
	local u5 = nil

	u5 = hookmetamethod(game, "__namecall", function(p1, ...)
		-- upvalues: u4 (ref), t1 (ref), u5 (ref)
		local t2 = { ... }
		local v184 = getnamecallmethod(true)

		if not u4 then
			return u5(p1, ...)
		end

		if v184 ~= "FireServer" and (v184 ~= "InvokeServer" or t2[1] == "Ping") then
			return u5(p1, ...)
		end

		t1[tostring(t2[1])] = (t1[tostring(t2[1])] or 1) + 1

		return "Pong"
	end)

	for _ = 1, 100 do
		task.spawn(function()
			error("[ASTRAL-LUA]: {ANTICHEAT} | SIMULATING ANTICHEAT FLAGS | (CLIENT)")
			error("[ASTRAL-LUA]: {ANTICHEAT} | SIMULATING ANTICHEAT FLAGS | (SERVER)")
		end)
	end

	task.wait()
	u4 = false

	for k, v in pairs(t1) do
		if v > 90 then
			str = tostring(k)
			print(k, v)
		end
	end

	if str then
		warn("[ASTRAL-LUA]: {ANTICHEAT} | SUCCESSFULY INJECTED (ASTRAL-AC) ON THE GAME ENVIRONMENT | {CLIENT}")
	else
		game.Players.LocalPlayer:Kick("Failed to recompile Lone AC (if you think this is an error join the disc server)")
	end

	hookmetamethod(game, "__namecall", u5)
elseif bypass_mode == "Manual" then
	u2 = hookmetamethod(game, "__namecall", function(p2, ...)
		-- upvalues: u2 (ref)
		local v186 = getnamecallmethod(true)

		if (v186 == "FireServer" or v186 == "InvokeServer") and bypass_mode == "Manual" then
			for _, v in pairs({ ... }) do
				if typeof(v) == "buffer" then
					return 5
				end
			end
		end

		return u2(p2, ...)
	end)
end

loadstring(game:HttpGet("https://pastefy.app/uOruVA9d/raw"))()

local function u10(p3, p4, p5)
	-- upvalues: u10 (ref)
	if not p4 then
		p4 = {}
	end

	if not p5 then
		p5 = {}
	end

	if p5[p3] then
		return p4
	end

	p5[p3] = true

	for _, v in pairs(p3) do
		p4[#p4 + 1] = v

		if type(v) == "table" then
			u10(v, p4, p5)
		end
	end

	return p4
end
local function u11(p6)
	local ok, _ = pcall(function()
		-- upvalues: p6 (ref)
		debug.getupvalues(p6, 1)
	end)

	return ok
end
local function v12(p7)
	-- upvalues: u11 (ref)
	local v199 = not iscclosure(p7)
	local v200 = islclosure(p7)
	local v201 = u11(p7)

	if v199 ~= v200 or (v199 ~= v201 or v200 ~= v201 or v200 ~= v199) then
		return nil
	end

	return v199
end

local _, _ = pcall(function()
	isreadonly(0)
end)
local _, _ = pcall(function()
	iscclosure(0)
end)
local _, _ = pcall(function()
	islclosure(0)
end)
local v19 = 3259 + 12

for _, v in ipairs(u10(getgenv())) do
	if typeof(v) == "function" then
		if v12(v) ~= nil then
		end
	end
end

for _, v in ipairs(u10(getrenv())) do
	if typeof(v) == "function" then
		if v12(v) ~= nil then
		end
	end
end

for _, v in ipairs(u10(getgc())) do
	if typeof(v) == "function" then
		if v12(v) ~= nil then
		end
	end
end

for _, v in ipairs(u10(getregistry())) do
	if typeof(v) == "function" then
		if v12(v) == nil then
		end
	end
end

local v28 = v19 + 12

workspace:GetServerTimeNow()
wait()
workspace:GetServerTimeNow()

if isreadonly(os) then
	if not isreadonly(math) then
	end
end

if spawn == getrenv().spawn and os.time == getrenv().os.time then
	if os.Date == getrenv().os.Date then
	end
end

local v29 = v28 + 8
local v30 = true
local v31 = getgc(true)

for i = 1, #v31 do
	if v31 == v31[i] then
		v30 = not v30
	end
end

local v33 = v29 + 49 + 4
local v34 = nil
local v35 = true
local v36 = getgc(true)

for i = 1, #v36 do
	local v38 = false
	local v39 = rawget(v36, i)

	if type(v39) ~= "table" then
		v38 = true
	elseif not rawget(v39, "GenericFunction") then
		v38 = true
	elseif not getrawmetatable(v39) and not getmetatable(v39) then
		if not v39._LOADED then
			v38 = true
		elseif not v39.FloatCurveKey then
			v38 = true
		else
			v35 = not v35
			v34 = v39
		end
	else
		v38 = true
	end

	if not v38 then
		break
	end
end

local v40 = v33 + 20
local _ = #v34
local v42 = getgc(true)

wait()

local v43 = v40 + 1
local v44 = getgc(true)
local _ = #v44
local v46 = true
local v47 = true

for i = 1, #v44 do
	local v49 = v44[i]

	if type(v49) == "table" and v42 == rawget(v49, 1) then
		v47 = not v47
	end

	if v49 == v44 then
		v46 = not v46
	end
end

local v50 = v43 + 2

setmetatable({ v44 }, {
	__mode = "v"
})
wait()

local _, _ = next(v34)
local v53 = v50 + 12

rconsoleclear()

local _ = #getgc(true)
local u73 = true

spawn(function()
	-- upvalues: u73 (ref)
	u73 = false
end)
task.wait()
wait()
spawn(function()
	while true do
		wait()
	end
end)

local n8 = 1


	local s10 = "ASTRAL.LUA V1.2"
	local s11 = "ASTRAL.LUA"

	_u12 = hookfunction(getnamecallmethod, function(...)
		if ({ ... })[1] ~= true then
			while true do
			end
		end

		return _u12(...)
	end)

	local _workspace = workspace
	local CurrentCamera = _workspace.CurrentCamera

	getgenv().Utilities = {
		Options_Utility = {
			PrimaryPart = "HumanoidRootPart",
			Humanoid = "Humanoid"
		},
		Connections = {}
	}
	getgenv().Settings = {
		Movement = {
			Bhop = {
				Enabled = false,
				AutobhopDelay = 0,
				Speed = 10
			},
			Flight = {
				Enabled = false,
				DirectionSpeed = 100,
				YSpeed = 10
			},
			WalkSpeed = {
				Enabled = false,
				Value = 17
			},
			JumpPower = {
				Enabled = false,
				Value = 50
			},
			AntiAim = {
				Enabled = false,
				Type = "Jitter",
				Yaw = 20
			}
		},
		LegitBot = {
			Enabled = false,
			Fov = 90,
			FieldOfView = false,
			Smoothness = 100,
			Hitbox = "Head",
			Type = "Lock",
			Keybind = "E",
			Teamcheck = false,
			Wallcheck = false,
			MaxDistance = 5000,
			Line = false
		},
		Ragebot = {
			Enabled = false,
			Autohit = false,
			Wallcheck = false,
			Maxdist = 5000,
			BodyPart = "Head"
		},
		Triggerbot = {
			Enabled = false,
			ReactionTime = 0.1,
			TeamCheck = false
		},
		Visuals = {
			Text = {
				Enabled = false,
				Outline = false,
				Distance = false,
				Health = false,
				Name = false,
				Offset = 15,
				TextColor = Color3.fromRGB(255, 255, 255),
				Transparency = 0.5,
				TextSize = 30
			},
			Box = {},
			Line = {
				Enabled = false,
				StartFrom = "Top",
				Thickness = 1,
				Transparency = 0.6,
				Color = Color3.fromRGB(255, 255, 255)
			},
			Chams = {
				Enabled = false,
				Filled = false,
				Transparency = 0.7,
				OutlineTransparency = 0.7,
				Color = Color3.fromRGB(255, 255, 255)
			},
			Client = {
				Bullet = {
					Enabled = false,
					Color = Color3.fromRGB(0, 0, 255),
					Transparency = 0.7,
					Material = "ForceField",
					Lifetime = 0.5,
					Type = "2d"
				},
				FieldOfView = {
					Enabled = false,
					Value = 90
				}
			},
			World = {
				Ambient = {
					Enabled = false,
					Color = Color3.fromRGB(255, 255, 255)
				},
				Brightness = {
					Enabled = false,
					Slider = 2
				},
				ColorShift_Bottom = {
					Enabled = false,
					Color = Color3.fromRGB(255, 255, 255)
				},
				ColorShift_Top = {
					Enabled = false,
					Color = Color3.fromRGB(255, 255, 255)
				},
				OutdoorAmbient = {
					Enabled = false,
					Color = Color3.fromRGB(255, 255, 255)
				},
				Shadow = {
					Enabled = true,
					Softness = 1
				}
			},
			Viewmodel = {
				Size = 0.25,
				SizeEnabled = true,
				Enabled = false,
				Color = Color3.fromRGB(1, 255, 1),
				Material = Enum.Material.ForceField,
				Transparency = 0.5,
				Tools = {
					Size = 1,
					Color = Color3.fromRGB(1, 1, 255),
					Material = Enum.Material.Neon,
					Transparency = 0.8,
					Enabled = false
				}
			}
		}
	}
	getgenv().tools = {
		Godmode = {
			Enabled = false
		},
		Autofarm = {
			Enabled = false,
			Frequency = 0.6
		},
		Building = {
			Enabled = false,
			Unbreakable = false,
			Offset = 0
		},
		Anticheat = {
			Enabled = true
		},
		Teleport = {
			Offset = 0,
			MaxIteration = 500,
			Timer = 0.1,
			TimerCheck = 3,
			Monument = "Airfield",
			Pos = Vector3.new(0, 0, 0),
			Type = "State"
		}
	}
	getgenv().Hitbox = {
		Enabled = false,
		Hitbox = "HumanoidRootPart",
		Size = 25
	}

	local _Hitbox = Hitbox
	local _tools = tools

	getgenv().Services = {}
	getgenv().Tracer = {}
	getgenv().Text = {}
	getgenv().Chams = Instance.new("Folder")

	local _Utilities = Utilities
	local _Services = Services
	local _Tracer = Tracer
	local _Text = Text
	local _Chams = Chams
	local _Settings = Settings
	local drawing = Drawing.new("Circle")

	drawing.Radius = _Settings.LegitBot.Fov
	drawing.Color = Color3.new(255, 255, 255)
	drawing.Filled = false
	drawing.NumSides = 360
	drawing.Position = Vector2.new(CurrentCamera.ViewportSize.X, CurrentCamera.ViewportSize.Y)
	drawing.Transparency = 1
	drawing.Thickness = 2
	drawing.Visible = _Settings.LegitBot.FieldOfView

	local drawing2 = Drawing.new("Line")

	drawing2.Thickness = 1
	drawing2.Transparency = 0.7
	drawing2.Color = Color3.fromRGB(255, 255, 255)
	_Chams.Parent = game:GetService("CoreGui")
	_Chams.Name = "Chams"
	setrawmetatable(_Services, {
		__index = function(_, p41)
			local p41_2 = game:GetService(p41)

			if p41_2 then
				return p41_2
			end

			error("Service " .. p41 .. " does not exist.")
		end
	})

	local Items = _Services.ReplicatedStorage.Modules.Client.Config.Items
	local lib = require(Items)
	local clone = Items:Clone()

	clone.Name = "AstralStats"

	local lib2 = require(clone)

	function _Utilities.log(p42, p43, p44)
		warn(string.format("[%s]: {%s} | %s | (%s) ", "ASTRAL-LUA", p42, p43, p44))
	end
	function _Utilities.editVal(p45, p46, p47)
		-- upvalues: _Utilities (ref)
		for k, v in pairs(p45) do
			if type(v) == "table" then
				_Utilities.editVal(v, p46, p47)
			elseif tostring(k):lower():find(p46:lower()) then
				p45[k] = p47
			end
		end
	end
	function _Utilities.resetVal()
		-- upvalues: lib (ref), lib2 (ref)
		for k in pairs(lib) do
			lib[k] = nil
		end

		for k, v in pairs(lib2) do
			lib[k] = v
		end
	end
	function _Utilities.GetPlayer(p48)
		-- upvalues: _Services (ref)
		return _Services.Players:FindFirstChild(p48)
	end
	function _Utilities.GetLocalPlayer()
		-- upvalues: _Services (ref)
		return _Services.Players.LocalPlayer
	end

	local u99 = _Utilities.GetLocalPlayer()

	function _Utilities.GetSelectedItem()
		-- upvalues: u99 (ref)
		local Hotbar = u99.PlayerGui.UI.Ingame.Inventory.Hotbar

		for _, v in pairs(Hotbar:GetChildren()) do
			if (v.Name == "1" or v.Name == "2" or v.Name == "3" or v.Name == "4" or v.Name == "5" or v.Name == "6") and v.BackgroundColor3 == Color3.fromRGB(26, 108, 162) then
				return v
			end
		end
	end
	function _Utilities.GetCharacter(p49)
		-- upvalues: _workspace (ref)
		return (_workspace.Players:FindFirstChild(p49))
	end
	function _Utilities.GetPlayers()
		-- upvalues: _Services (ref)
		return (_Services.Players:GetPlayers())
	end
	function _Utilities.GetTeam(p50)
		-- upvalues: _Utilities (ref)
		local v288 = _Utilities.GetPlayer(p50)

		if not v288 then
			return nil
		end

		return v288.TeamColor
	end
	function _Utilities.GetHumanoid(p51)
		-- upvalues: _Utilities (ref)
		local v290 = _Utilities.GetPlayer(p51)
		local v291 = _Utilities.GetCharacter(v290.Name)

		if v291 then
			return (v291:FindFirstChild(_Utilities.Options_Utility.Humanoid))
		end
	end
	function _Utilities.GetPlayerPrimary(p52)
		-- upvalues: _Utilities (ref)
		local v293 = _Utilities.GetPlayer(p52)
		local v294 = _Utilities.GetCharacter(v293.Name)

		if v294 then
			return (v294:FindFirstChild(_Utilities.Options_Utility.PrimaryPart))
		end

		return nil
	end
	function _Utilities.GetHealth(p53)
		-- upvalues: _Utilities (ref)
		local v296 = _Utilities.GetHumanoid(p53)

		if v296 then
			return v296.Health
		end

		return nil
	end
	function _Utilities.DistanceBetweenPlayers(p54, p55)
		-- upvalues: _Utilities (ref)
		local v299 = _Utilities.GetCharacter(p54.Name)
		local v300 = _Utilities.GetCharacter(p55.Name)

		if v299 and v300 then
			local _UtilitiesOptions_UtilityPrimaryPart = v299:FindFirstChild(_Utilities.Options_Utility.PrimaryPart)
			local _UtilitiesOptions_UtilityPrimaryPart2 = v300:FindFirstChild(_Utilities.Options_Utility.PrimaryPart)

			if _UtilitiesOptions_UtilityPrimaryPart and _UtilitiesOptions_UtilityPrimaryPart2 then
				return (_UtilitiesOptions_UtilityPrimaryPart.Position - _UtilitiesOptions_UtilityPrimaryPart2.Position).Magnitude
			end
		end

		return Vector3.zero
	end
	function _Utilities.IsVisible(p56, p57)
		-- upvalues: _Utilities (ref), CurrentCamera (ref), _workspace (ref)
		local v305 = _Utilities.GetCharacter(_Utilities.LocalPlayer())

		if p57 or v305 then
			local v306 = p57.HumanoidRootPart.Position - p56
			local raycastParams = RaycastParams.new()

			raycastParams.FilterDescendantsInstances = {
				CurrentCamera,
				v305
			}
			raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
			raycastParams.IgnoreWater = true

			local raycastResult = _workspace:Raycast(p56, v306, raycastParams)

			return raycastResult == nil or raycastResult.Instance:IsDescendantOf(p57)
		end

		return false
	end
	function _Utilities.WorldToScreen(p58)
		-- upvalues: CurrentCamera (ref)
		local v310, v311 = CurrentCamera:WorldToViewportPoint(p58)

		return Vector2.new(v310.X, v310.Y), v311
	end
	function _Utilities.ClosestToMouseRadius(p59, p60, p61)
		-- upvalues: _Utilities (ref), u99 (ref)
		local v315 = nil
		local huge = math.huge
		local v317 = _Utilities.GetPlayers()
		local v318 = u99
		local Mouse = v318:GetMouse()

		for _, v in pairs(v317) do
			if v ~= v318 then
				local v322 = not p59 or _Utilities.GetTeam(v.Name) ~= _Utilities.GetTeam(v318.Name)
				local vector3 = Vector3.new(0, 0, 0)
				local v324 = nil
				local v325 = _Utilities.GetPlayerPrimary(v318.Name)

				if _Utilities.GetCharacter(v.Name) then
					v324 = _Utilities.GetCharacter(v.Name)
				end

				if v325 then
					vector3 = v325.Position
				end

				local v326 = not p60 or _Utilities.IsVisible(vector3, v324)
				local v327 = _Utilities.GetPlayerPrimary(v.Name)

				if v327 then
					local v328, v329 = _Utilities.WorldToScreen(v327.Position)

					if v329 then
						local Magnitude = (Vector2.new(Mouse.X, Mouse.Y + 55) - v328).Magnitude

						if Magnitude <= p61 and v322 and v326 and Magnitude < huge then
							huge = Magnitude
							v315 = v
						end
					end
				end
			end
		end

		return v315, huge
	end
	function _Utilities.SetCamPos(p62, p63)
		-- upvalues: CurrentCamera (ref)
		local CurrentCameraCFrame = CurrentCamera.CFrame
		local cFrame = CFrame.new(CurrentCamera.CFrame.Position, p62)

		if p63 == 1 then
			CurrentCamera.CFrame = cFrame
		else
			CurrentCamera.CFrame = CurrentCameraCFrame:Lerp(cFrame, p63)
		end
	end
	function _Utilities.beam(p64, p65)
		-- upvalues: _workspace (ref), _Settings (ref)
		local Part = Instance.new("Part", _workspace)

		Part.Anchored = true
		Part.CanCollide = false
		Part.Material = _Settings.Visuals.Client.Bullet.Material
		Part.Color = _Settings.Visuals.Client.Bullet.Color
		Part.Size = Vector3.new(0.1, 0.1, (p64 - p65).magnitude)
		Part.CFrame = CFrame.new(p64, p65) * CFrame.new(0, -0.5, -Part.Size.Z / 2)

		return Part
	end
	function _Utilities.UpdateChams(p66)
		-- upvalues: _Settings (ref), _Utilities (ref), _Chams (ref)
		if not _Settings.Visuals.Chams.Enabled then
			return
		end

		local v339 = _Utilities.GetCharacter(p66.Name)

		if _Chams:FindFirstChild(p66.Name) then
			local p66Name = _Chams:FindFirstChild(p66.Name)

			p66Name.OutlineTransparency = _Settings.Visuals.Chams.OutlineTransparency
			p66Name.FillTransparency = _Settings.Visuals.Chams.Transparency
			p66Name.FillColor = _Settings.Visuals.Chams.Color
			p66Name.OutlineColor = _Settings.Visuals.Chams.Color
			p66Name.Adornee = v339
			p66Name.Name = p66.Name
		end

		if v339 and not _Chams:FindFirstChild(p66.Name) then
			local Highlight = Instance.new("Highlight")

			Highlight.Parent = _Chams
			Highlight.OutlineTransparency = _Settings.Visuals.Chams.OutlineTransparency
			Highlight.FillTransparency = _Settings.Visuals.Chams.Transparency
			Highlight.FillColor = _Settings.Visuals.Chams.Color
			Highlight.OutlineColor = _Settings.Visuals.Chams.Color
			Highlight.Parent = _Chams
			Highlight.Adornee = v339
			Highlight.Name = p66.Name
		end
	end
	function _Utilities.UpdateText(p67)
		-- upvalues: _Text (ref), _Settings (ref), _Utilities (ref), u99 (ref)
		local v343 = _Text[p67.Name]

		if p67 then
			if _Settings.Visuals.Text.Enabled then
				local v344 = _Utilities.GetPlayerPrimary(p67.Name)

				if not v344 then
					if v343 then
						v343.Visible = false
					end

					return
				end

				local v345, v346 = _Utilities.WorldToScreen(v344.Position)

				if not _Text[p67.Name] then
					local drawing3 = Drawing.new("Text")

					_Text[p67.Name] = drawing3
					drawing3.Center = true
					drawing3.Size = _Settings.Visuals.Text.TextSize
					drawing3.Outline = _Settings.Visuals.Text.Outline
					drawing3.Color = _Settings.Visuals.Text.TextColor
					drawing3.Transparency = _Settings.Visuals.Text.Transparency
					drawing3.Font = Drawing.Fonts.UI
				end

				local s12 = ""
				local s13 = ""
				local s14 = ""

				if v346 then
					local v351 = _Text[p67.Name]

					v351.Visible = true
					v351.Center = true
					v351.Size = _Settings.Visuals.Text.TextSize
					v351.Outline = _Settings.Visuals.Text.Outline
					v351.Color = _Settings.Visuals.Text.TextColor
					v351.Transparency = _Settings.Visuals.Text.Transparency
					v351.Font = Drawing.Fonts.UI
					v351.Position = Vector2.new(v345.X, v345.Y - _Settings.Visuals.Text.Offset - 10)

					if _Settings.Visuals.Text.Name then
						s12 = p67.Name
					end

					if _Settings.Visuals.Text.Distance then
						local v352 = u99

						s13 = "STUD: [" .. tostring(math.floor(_Utilities.DistanceBetweenPlayers(v352, p67))) .. "]"
					end

					if _Settings.Visuals.Text.Health then
						s14 = tostring(_Utilities.GetHealth(p67.Name))
					end

					v351.Text = "[" .. s14 .. "]" .. " " .. s12 .. " " .. s13
				else
					_Text[p67.Name].Visible = false
				end

				return
			end

			if v343 then
				v343.Visible = false
			end

			return
		end

		if v343 then
			v343.Visible = false
		end
	end
	function _Utilities.UpdateTracer(p68)
		-- upvalues: _Tracer (ref), _Settings (ref), _Utilities (ref), CurrentCamera (ref), u99 (ref)
		local v354 = _Tracer[p68.Name]

		if _Settings.Visuals.Line.Enabled then
			local v355 = _Utilities.GetPlayerPrimary(p68.Name)

			if not v355 then
				if v354 then
					v354.Visible = false
				end

				return
			end

			local v356, v357 = _Utilities.WorldToScreen(v355.Position)

			if not v354 then
				v354 = Drawing.new("Line")
				_Tracer[p68.Name] = v354
				v354.Thickness = _Settings.Visuals.Line.Thickness
				v354.Transparency = _Settings.Visuals.Line.Transparency
				v354.Color = _Settings.Visuals.Line.Color
			end

			if v357 then
				v354.Visible = true

				if _Settings.Visuals.Line.StartFrom == "Top" then
					v354.From = Vector2.new(CurrentCamera.ViewportSize.X / 2, 0)
				elseif _Settings.Visuals.Line.StartFrom == "Bottom" then
					v354.From = Vector2.new(CurrentCamera.ViewportSize.X / 2, CurrentCamera.ViewportSize.Y)
				elseif _Settings.Visuals.Line.StartFrom == "Mouse" then
					local Mouse = u99:GetMouse()

					v354.From = Vector2.new(Mouse.X, Mouse.Y + 55)
				end

				v354.To = v356
			else
				v354.Visible = false
			end

			return
		end

		if v354 then
			v354.Visible = false
		end
	end

	local v100 = _Utilities.GetCharacter(_Utilities.GetLocalPlayer().Name)

	v100.Archivable = true

	local clone2 = v100:Clone()
	local clone3 = v100:Clone()

	clone2.Parent = _workspace.Players
	clone3.Parent = _workspace.Players

	local s15 = "https://raw.githubusercontent.com/ScriptSkiddie69/LinoriaLib/main/"
	local u104 = loadstring(game:HttpGet(s15 .. "Library.lua"))()
	local v105 = loadstring(game:HttpGet(s15 .. "addons/ThemeManager.lua"))()
	local v106 = loadstring(game:HttpGet(s15 .. "addons/SaveManager.lua"))()
	local v107 = u104:CreateWindow({
		Title = "ASTRAL.LUA - PRIVATE",
		Center = true,
		AutoShow = true,
		TabPadding = 8,
		MenuFadeTime = 0.2
	})
	local t5 = {
		Main = v107:AddTab("Main"),
		Misc = v107:AddTab("Exploit"),
		Movement = v107:AddTab("Movement"),
		Visuals = v107:AddTab("Visuals"),
		["UI Settings"] = v107:AddTab("UI Settings")
	}
	local v109 = t5.Main:AddLeftGroupbox("Legit bot")
	local v110 = t5.Main:AddLeftGroupbox("Trigger bot")
	local v111 = t5.Main:AddRightGroupbox("Hitbox Expander")
	local v112 = t5.Main:AddRightGroupbox("Fire rate")
	local v113 = t5.Misc:AddRightGroupbox("Exploit")
	local v114 = t5.Misc:AddLeftGroupbox("Misc")
	local v115 = t5.Misc:AddLeftGroupbox("Character")
	local v116 = t5.Misc:AddLeftGroupbox("Spawn Item")
	local v117 = t5.Misc:AddRightGroupbox("Teleport")
	local v118 = t5.Movement:AddLeftGroupbox("Flight")
	local v119 = t5.Movement:AddRightGroupbox("Anti Aim")
	local v120 = t5.Visuals:AddLeftGroupbox("Text esp")
	local v121 = t5.Visuals:AddRightGroupbox("Tracer esp")
	local v122 = t5.Visuals:AddLeftGroupbox("Chams esp")
	local v123 = t5.Visuals:AddRightTabbox()
	local v124 = v123:AddTab("World")
	local v125 = v123:AddTab("Client")

	v109:AddToggle("AimbotEnabled", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Enables silent aim/aimlock",
		Callback = function(p69)
			-- upvalues: _Settings (ref)
			_Settings.LegitBot.Enabled = p69
		end
	}):AddKeyPicker("LegitbotKeybind", {
		Default = "MB2",
		SyncToggleState = false,
		Mode = "Hold",
		Text = "Legit Bot",
		NoUI = false,
		Callback = function(p70)
			-- upvalues: _Settings (ref)
			_Settings.LegitBot.Keybind = p70
		end,
		ChangedCallback = function(p71)
			-- upvalues: _Settings (ref)
			_Settings.LegitBot.Keybind = p71
		end
	})
	v109:AddDropdown("LegitbotHitbox", {
		Values = {
			"Head",
			"HumanoidRootPart"
		},
		Default = 1,
		Multi = false,
		Text = "Hitbox",
		Tooltip = "Target lock of the silent aim/aimlock",
		Callback = function(p72)
			-- upvalues: _Settings (ref)
			_Settings.LegitBot.Hitbox = p72
		end
	})
	v109:AddDropdown("LegitbotType", {
		Values = {
			"Lock",
			"Silent"
		},
		Default = 1,
		Multi = false,
		Text = "Hitbox",
		Tooltip = "Types of legitbot",
		Callback = function(p73)
			-- upvalues: _Settings (ref)
			_Settings.LegitBot.Type = p73
		end
	})
	v109:AddSlider("LegitbotSmoothness", {
		Text = "Smoothness",
		Default = 100,
		Min = 1,
		Max = 100,
		Rounding = 1,
		Compact = false,
		Callback = function(p74)
			-- upvalues: _Settings (ref)
			_Settings.LegitBot.Smoothness = p74 / 100
		end
	})
	v109:AddToggle("LegitBotLine", {
		Text = "Target line",
		Default = false,
		Tooltip = "Makes a line on the legitbot taret",
		Callback = function(p75)
			-- upvalues: _Settings (ref)
			_Settings.LegitBot.Line = p75
		end
	})
	v109:AddLabel("Field Of View")
	v109:AddToggle("LegitBotFov", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Makes LegitBot FOV Visible",
		Callback = function(p76)
			-- upvalues: _Settings (ref)
			_Settings.LegitBot.FieldOfView = p76
		end
	})
	v109:AddSlider("LegitBotFovValue", {
		Text = "Amount: ",
		Default = 90,
		Min = 1,
		Max = 360,
		Rounding = 1,
		Compact = false,
		Callback = function(p77)
			-- upvalues: _Settings (ref)
			_Settings.LegitBot.Fov = p77
		end
	})
	v109:AddLabel("Team check")
	v109:AddToggle("LegitBotTeamCheck", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Makes LegitBot Targets enemy only",
		Callback = function(p78)
			-- upvalues: _Settings (ref)
			_Settings.LegitBot.Teamcheck = p78
		end
	})
	v109:AddLabel("Wall check")
	v109:AddToggle("LegitBotWallCheck", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Makes LegitBot Targets visible enemy only",
		Callback = function(p79)
			-- upvalues: _Settings (ref)
			_Settings.LegitBot.Wallcheck = p79
		end
	})
	v110:AddToggle("TriggerbotEnabled", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Enables triggerbot",
		Callback = function(p80)
			-- upvalues: _Settings (ref)
			_Settings.Triggerbot.Enabled = p80
		end
	})
	v110:AddToggle("TriggerbotEnabled", {
		Text = "Team check",
		Default = false,
		Tooltip = "Only fires at enemies",
		Callback = function(p81)
			-- upvalues: _Settings (ref)
			_Settings.Triggerbot.Teamcheck = p81
		end
	})
	v110:AddSlider("TriggerbotReaction", {
		Text = "Reaction time",
		Default = 1,
		Min = 0,
		Max = 100,
		Rounding = 1,
		Compact = false,
		Callback = function(p82)
			-- upvalues: _Settings (ref)
			_Settings.Triggerbot.ReactionTime = p82 / 100
		end
	})
	v111:AddToggle("HitboxEnabled", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Expands hitbox",
		Callback = function(p83)
			-- upvalues: _Hitbox (ref)
			_Hitbox.Enabled = p83
		end
	})
	v111:AddDropdown("HitboxOptions", {
		Values = {
			"HumanoidRootPart",
			"Head"
		},
		Default = 1,
		Multi = false,
		Text = "Hitbox",
		Tooltip = "Whitelists things that can be farmed",
		Callback = function(p84)
			-- upvalues: _Hitbox (ref)
			_Hitbox.Hitbox = p84
		end
	})
	v111:AddSlider("HitboxSize", {
		Text = "Hitbox size",
		Default = 25,
		Min = 1,
		Max = 100,
		Rounding = 1,
		Compact = false,
		Callback = function(p85)
			-- upvalues: _Hitbox (ref)
			_Hitbox.Size = p85
		end
	})

	local t6 = {
		Enabled = false,
		Range = 20
	}

	v111:AddLabel("Melee aura")
	v111:AddToggle("MeleeEnabled", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Hits anything in range ( put melee at slot 5)",
		Callback = function(p86)
			-- upvalues: t6 (ref)
			t6.Enabled = p86
		end
	})
	v111:AddSlider("MeleeDist", {
		Text = "Aura distance",
		Default = 20,
		Min = 1,
		Max = 100,
		Rounding = 1,
		Compact = false,
		Callback = function(p87)
			-- upvalues: t6 (ref)
			t6.Range = p87
		end
	})

	local t7 = {
		FireRate = {
			Enabled = false,
			Value = 6000
		},
		Spread = {
			Enabled = false,
			Value = 0
		},
		Reload = {
			Enabled = false,
			Value = 0
		},
		MaxAmmo = {
			Enabled = false,
			Value = 60
		}
	}

	v112:AddToggle("FireRate", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Modifies your gun firerate",
		Callback = function(p88)
			-- upvalues: t7 (ref), _Utilities (ref), lib (ref)
			t7.FireRate.Enabled = p88

			if p88 then
				_Utilities.editVal(lib, "RPM", t7.FireRate.Value)
			end
		end
	})
	v112:AddSlider("FirerateValue", {
		Text = "Value",
		Default = 6000,
		Min = 1,
		Max = 6000,
		Rounding = 1,
		Compact = false,
		Callback = function(p89)
			-- upvalues: t7 (ref), _Utilities (ref), lib (ref)
			t7.FireRate.Value = p89

			if t7.FireRate.Enabled then
				_Utilities.editVal(lib, "RPM", t7.FireRate.Value)
			end
		end
	})
	v112:AddLabel("Spread")
	v112:AddToggle("Spread", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Modifies your gun spread",
		Callback = function(p90)
			-- upvalues: t7 (ref), _Utilities (ref), lib (ref)
			t7.Spread.Enabled = p90

			if p90 then
				_Utilities.editVal(lib, "Spread", t7.FireRate.Value)
			end
		end
	})
	v112:AddSlider("SpreadVal", {
		Text = "Value",
		Default = 0,
		Min = 0,
		Max = 50,
		Rounding = 1,
		Compact = false,
		Callback = function(p91)
			-- upvalues: t7 (ref), _Utilities (ref), lib (ref)
			t7.Spread.Value = p91

			if t7.Spread.Enabled then
				_Utilities.editVal(lib, "Spread", t7.FireRate.Value)
			end
		end
	})
	v112:AddLabel("Auto reload")
	v112:AddToggle("ReloadEnabled", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Auto reloads your gun",
		Callback = function(p92)
			-- upvalues: t7 (ref)
			t7.Reload.Enabled = p92
		end
	})
	v113:AddToggle("ACBypass", {
		Text = "Anticheat bypass",
		Default = true,
		Tooltip = "Bypasses the serversided anticheat",
		Callback = function(p93)
			-- upvalues: _tools (ref)
			_tools.Anticheat.Enabled = p93
		end
	})

	local n9 = 0.15
	local n10 = 0.15

	v113:AddButton({
		Text = "Bruteforce building",
		Func = function()
			-- upvalues: _Utilities (ref), u104 (ref), n9 (ref), n10 (ref)
			local v384 = _Utilities.GetLocalPlayer()

			_Utilities.GetCharacter(v384.Name)

			local v385 = _Utilities.GetHumanoid(v384.Name)

			if v385 then
				local Target = v384:GetMouse().Target
				local v387 = nil
				local ParentParent = nil

				if Target.Parent.Parent.Name ~= "Doors" then
					if Target.Parent.Parent.Parent.Name == "Doors" then
						ParentParent = Target.Parent.Parent
					end
				else
					ParentParent = Target.Parent
				end

				for _, v in pairs(ParentParent:GetDescendants()) do
					if v.Name == "Authorized" then
						v387 = v

						break
					end
				end

				local t8 = {
					"Drown Tick",
					false,
					-(v385.MaxHealth - v385.Health) / 5,
					nil
				}

				game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack(t8))

				local n11 = 1000

				for _ = 1, 2250 do
					if not v385 then
						return
					end

					local UserId = v387:FindFirstChild(v384.UserId)

					if UserId then
						u104:Notify("BRUTEFORCED! Code lock is in between: " .. tostring(n11) .. "-" .. tostring(n11 - 4) .. " (if doesnt work try removing 1-5 or adding 1-5 numbers)", 8)
						_Utilities.log("BRUTEFORCED", "Codelock is in between: " .. tostring(n11) .. "-" .. tostring(n11 - 4), "(SERVER)")

						return
					end

					for _ = 1, 4 do
						UserId = v387:FindFirstChild(v384.UserId)

						if UserId then
							u104:Notify("BRUTEFORCED! Code lock is in between: " .. tostring(n11) .. "-" .. tostring(n11 - 4) .. " (if doesnt work try removing 1-5 or adding 1-5 numbers)", 8)
							_Utilities.log("BRUTEFORCED", "Codelock is in between: " .. tostring(n11) .. "-" .. tostring(n11 - 4), "(SERVER)")

							break
						end

						n11 = n11 + 1
						game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack({
							"Try Unlock Lock",
							false,
							ParentParent,
							n11,
							24,
							43,
							23,
							2,
							17,
							25,
							35,
							24,
							7,
							48,
							45,
							40,
							48,
							34,
							7,
							42,
							20,
							9,
							38,
							41,
							31,
							50,
							10,
							17,
							14,
							44,
							6,
							14,
							48,
							40,
							15,
							34,
							41,
							9,
							28,
							11,
							24,
							27,
							38,
							8,
							39,
							23,
							20,
							42,
							2
						}))
						task.wait(n9)
					end

					if not UserId then
						local t9 = {
							"Drown Tick",
							false,
							-(v385.MaxHealth - v385.Health) / 7,
							nil
						}

						game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack(t9))
					end

					task.wait(n10)
				end

				return
			end
		end,
		DoubleClick = false,
		Tooltip = "Bruteforces the building on your cursor ( DISABLE GODMODE )"
	})
	v113:AddSlider("HopSpeed", {
		Text = "Bruteforce hopspeed",
		Default = 15,
		Min = 0,
		Max = 100,
		Rounding = 1,
		Compact = false,
		Callback = function(p94)
			-- upvalues: n9 (ref)
			n9 = p94 / 100
		end
	})
	v113:AddSlider("AntiKickz", {
		Text = "Bruteforce heal speed",
		Default = 15,
		Min = 0,
		Max = 100,
		Rounding = 1,
		Compact = false,
		Callback = function(p95)
			-- upvalues: n10 (ref)
			n10 = p95 / 100
		end
	})
	v115:AddLabel("God mode")
	v115:AddToggle("GodMode", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Makes u unkillable basically",
		Callback = function(p96)
			-- upvalues: _tools (ref)
			_tools.Godmode.Enabled = p96
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack({
				"Drown Tick",
				false,
				1,
				nil
			}))
		end
	})
	v115:AddLabel("Semi noclip")

	local u130 = false

	v115:AddToggle("SemiNoclips", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Semi-noclips to bases",
		Callback = function(p97)
			-- upvalues: u130 (ref)
			u130 = p97
		end
	}):AddKeyPicker("SemiNoclip", {
		Default = "Z",
		SyncToggleState = false,
		Mode = "Toggle",
		Text = "Semi Noclip",
		NoUI = false,
		Callback = function(_)
			-- upvalues: _Utilities (ref), _workspace (ref)
			local v402 = _Utilities.GetLocalPlayer()
			local v403 = _Utilities.GetCharacter(v402.Name)

			if not v403 then
				return
			end

			local Humanoid = v403:FindFirstChildWhichIsA("Humanoid")

			if Humanoid and Humanoid.RootPart then
				local _ = _workspace.CurrentCamera

				Humanoid.Sit = true
				task.wait(0.1)
				Humanoid.RootPart.CFrame = Humanoid.RootPart.CFrame * CFrame.Angles(-math.pi * 0.5, 0, 0)

				for _, v in ipairs(Humanoid:GetPlayingAnimationTracks()) do
					v:Stop()
				end

				return
			end
		end,
		ChangedCallback = function(_)
		end
	})
	v115:AddLabel("Better noclip")

	local u131 = false
	local vector3 = Vector3.new(0, 0, 0)
	local n12 = 5
	local n13 = 5

	v115:AddToggle("NoclipBetter", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Noclips to bases",
		Callback = function(p100)
			-- upvalues: u131 (ref), clone3 (ref)
			u131 = p100

			if p100 then
				local Highlight = Instance.new("Highlight")

				Highlight.Enabled = true
				Highlight.Parent = clone3
				Highlight.Adornee = clone3
				Highlight.Name = "NoclipVisual"
			elseif clone3:FindFirstChild("NoclipVisual") then
				clone3.NoclipVisual:Destroy()
			end
		end
	}):AddKeyPicker("BetterNoclipK", {
		Default = "X",
		SyncToggleState = false,
		Mode = "Toggle",
		Text = "Better noclip",
		NoUI = false,
		Callback = function(_)
			-- upvalues: _Utilities (ref), u99 (ref), u131 (ref), n13 (ref), vector3 (ref)
			local v412 = _Utilities.GetCharacter(u99.Name)
			local u413 = _Utilities.GetPlayerPrimary(u99.Name)
			local Humanoid = v412:FindFirstChild("Humanoid")

			if u131 then
				getgenv().state = Enum.HumanoidStateType.Jumping;
				(function(p102)
					-- upvalues: u413 (ref), n13 (ref), Humanoid (ref)
					local v742 = u413
					local n14 = 0

					while not (n14 >= 0.5) and not (n13 < 25) do
						if not (v742.Position.Y > p102.Y) then
							n14 = 0
						else
							n14 = n14 + 0.1
						end

						v742.Velocity = Vector3.new(0, 50, 0)
						task.wait(0.1)
					end

					for _ = 1, 15 do
						v742.CFrame = p102
						task.wait(0.05)
						Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
					end
				end)(vector3)
			end
		end,
		ChangedCallback = function(_)
		end
	})
	v115:AddSlider("OffsetBeterNoclip", {
		Text = "Offset (LookVector)",
		Default = 5,
		Min = 0,
		Max = 50,
		Rounding = 1,
		Compact = false,
		Callback = function(p104)
			-- upvalues: n12 (ref)
			n12 = p104
		end
	})
	v115:AddSlider("OffsetBeterNoclipY", {
		Text = "Offset Y",
		Default = 25,
		Min = 0,
		Max = 50,
		Rounding = 1,
		Compact = false,
		Callback = function(p105)
			-- upvalues: n13 (ref)
			n13 = p105
		end
	})
	v117:AddLabel("Teleport exploit")

	local function u135(p106)
		if p106 == "Airfield" then
			return Vector3.new(588, 261, 281)
		end

		if p106 == "Bunker" then
			return Vector3.new(-203, 197, -2005)
		end

		if p106 == "Military" then
			return Vector3.new(543, 58, 2994)
		end

		return Vector3.new(0, 0, 0)
	end

	v117:AddButton({
		Text = "Teleport to camera",
		Func = function()
			-- upvalues: _Utilities (ref), u99 (ref), _tools (ref), _workspace (ref), CurrentCamera (ref)
			local u419 = _Utilities.GetCharacter(u99.Name)
			local u420 = _Utilities.GetPlayerPrimary(u99.Name)
			local Humanoid = u419:FindFirstChild("Humanoid")

			if _tools.Teleport.Type == "Vector" then
				if not u420 then
					return
				end

				local Position = u420.Position
				local Pos = _tools.Teleport.Pos
				local v424 = (function(p107, p108, p109)
					-- upvalues: u419 (ref), _workspace (ref)
					local v748 = p108 - p107
					local raycastResult = nil
					local n15 = 0

					for i = 1, p109 do
						n15 = i

						local raycastParams = RaycastParams.new()

						raycastParams.FilterDescendantsInstances = { u419 }
						raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
						raycastResult = _workspace:Raycast(p107 + Vector3.new(0, i, 0), v748, raycastParams)

						if not raycastResult then
							return {
								FinalIteration = n15,
								Hit = raycastResult
							}
						end
					end

					return {
						FinalIteration = n15,
						Hit = raycastResult
					}
				end)(Position, Pos, _tools.Teleport.MaxIteration)
				local v425 = u420.Position.Y + v424.FinalIteration + _tools.Teleport.Offset
				local n16 = 0
				local g429 = nil
				local v428

				repeat
					local g427 = false

					v428 = u420

					if v425 > v428.Position.Y then
						v428.Velocity = Vector3.new(0, 50, 0)
						n16 = 0
						g429 = true
					end

					if not g429 then
						n16 = n16 + _tools.Teleport.Timer
						v428.Velocity = Vector3.new(0, 50, 0)
					end

					if g429 or not (n16 >= _tools.Teleport.TimerCheck) then
						g429 = false
						task.wait(_tools.Teleport.Timer)
						g427 = true
					end
				until not g427

				v428.Velocity = Vector3.new(0, 0, 0)

				for _ = 1, 10 do
					u420.CFrame = CFrame.new(Pos.X, u420.Position.Y, Pos.Z)
					task.wait(0.1)
				end
			else
				if not Humanoid then
					return
				end;

				(function(p110)
					-- upvalues: u420 (ref), _tools (ref)
					local v754 = u420
					local _ = v754.Position
					local n17 = 0

					while true do
						if v754.Position.Y < p110.Y then
							v754.Velocity = Vector3.new(0, 50, 0)

							local v757 = p110.Position.Y - v754.Position.Y

							print("Progress: " .. tostring(v757) .. " studs away")
							n17 = 0
						else
							n17 = n17 + _tools.Teleport.Timer
							v754.Velocity = Vector3.new(0, 50, 0)

							if n17 >= 1 then
								v754.Velocity = Vector3.new(0, 0, 0)
								warn("Teleporting.. ")

								local n18 = 0

								while not (n18 >= _tools.Teleport.TimerCheck) do
									n18 = n18 + 0.05
									v754.CFrame = p110

									for _ = 1, 2 do
										hum:ChangeState(Enum.HumanoidStateType.Jumping)
										task.wait()
									end
								end

								return
							end
						end

						task.wait(0.1)
					end
				end)(CurrentCamera.CFrame)
			end
		end,
		DoubleClick = false,
		Tooltip = "Teleports the character to the camera position"
	})
	v117:AddButton({
		Text = "Teleport to position",
		Func = function()
			-- upvalues: _Utilities (ref), u99 (ref), _tools (ref), _workspace (ref)
			local u431 = _Utilities.GetCharacter(u99.Name)
			local u432 = _Utilities.GetPlayerPrimary(u99.Name)
			local Humanoid = u431:FindFirstChild("Humanoid")

			if _tools.Teleport.Type == "Vector" then
				if not u432 then
					return
				end

				local Position = u432.Position
				local Pos = _tools.Teleport.Pos
				local v436 = (function(p111, p112, p113)
					-- upvalues: u431 (ref), _workspace (ref)
					local v763 = p112 - p111
					local raycastResult = nil
					local n19 = 0

					for i = 1, p113 do
						n19 = i

						local raycastParams = RaycastParams.new()

						raycastParams.FilterDescendantsInstances = { u431 }
						raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
						raycastResult = _workspace:Raycast(p111 + Vector3.new(0, i, 0), v763, raycastParams)

						if not raycastResult then
							return {
								FinalIteration = n19,
								Hit = raycastResult
							}
						end
					end

					return {
						FinalIteration = n19,
						Hit = raycastResult
					}
				end)(Position, Pos, _tools.Teleport.MaxIteration)
				local v437 = u432.Position.Y + v436.FinalIteration + _tools.Teleport.Offset
				local n20 = 0
				local g441 = nil
				local v440

				repeat
					local g439 = false

					v440 = u432

					if v437 > v440.Position.Y then
						v440.Velocity = Vector3.new(0, 50, 0)
						n20 = 0
						g441 = true
					end

					if not g441 then
						n20 = n20 + _tools.Teleport.Timer
						v440.Velocity = Vector3.new(0, 50, 0)
					end

					if g441 or not (n20 >= _tools.Teleport.TimerCheck) then
						g441 = false
						task.wait(_tools.Teleport.Timer)
						g439 = true
					end
				until not g439

				v440.Velocity = Vector3.new(0, 0, 0)

				for _ = 1, 10 do
					u432.CFrame = CFrame.new(Pos.X, u432.Position.Y, Pos.Z)
					task.wait(0.1)
				end
			else
				if not Humanoid then
					return
				end;

				(function(p114)
					-- upvalues: u432 (ref), _tools (ref)
					local v769 = u432
					local _ = v769.Position
					local n21 = 0

					while true do
						if not (v769.Position.Y < p114.Y) then
							n21 = n21 + _tools.Teleport.Timer
							v769.Velocity = Vector3.new(0, 50, 0)

							if n21 >= 1 then
								v769.Velocity = Vector3.new(0, 0, 0)
								warn("Teleporting.. ")

								local n22 = 0

								while not (n22 >= _tools.Teleport.TimerCheck) do
									n22 = n22 + 0.05
									v769.CFrame = p114

									for _ = 1, 2 do
										hum:ChangeState(Enum.HumanoidStateType.Jumping)
										task.wait()
									end
								end

								return
							end
						else
							v769.Velocity = Vector3.new(0, 50, 0)

							local v774 = p114.Position.Y - v769.Position.Y

							print("Progress: " .. tostring(v774) .. " studs away")
							n21 = 0
						end

						task.wait(0.1)
					end
				end)(CFrame.new(_tools.Teleport.Pos))
			end
		end,
		DoubleClick = false,
		Tooltip = "Teleports the character to the given position"
	})
	v117:AddLabel("Teleport to monument")
	v117:AddButton({
		Text = "Teleport to monument",
		Func = function()
			-- upvalues: _Utilities (ref), u99 (ref), _tools (ref), _workspace (ref), u135 (ref)
			local u443 = _Utilities.GetCharacter(u99.Name)
			local u444 = _Utilities.GetPlayerPrimary(u99.Name)
			local u445 = _Utilities.GetHumanoid(u99.Name)

			if not u444 and not u445 then
				return
			end

			local g446 = nil

			repeat
				if g446 or _tools.Teleport.Type ~= "Vector" then
					if not g446 then
						if not u445 then
							return
						end;

						(function(p115)
							-- upvalues: u444 (ref), _tools (ref), u445 (ref)
							local v784 = u444
							local _ = v784.Position
							local n23 = 0

							while true do
								if v784.Position.Y < p115.Y then
									v784.Velocity = Vector3.new(0, 50, 0)

									local v787 = p115.Position.Y - v784.Position.Y

									print("Progress: " .. tostring(v787) .. " studs away")
									n23 = 0
								else
									n23 = n23 + _tools.Teleport.Timer
									v784.Velocity = Vector3.new(0, 50, 0)

									if n23 >= 1 then
										v784.Velocity = Vector3.new(0, 0, 0)
										warn("Teleporting.. ")

										local n24 = 0

										while not (n24 >= _tools.Teleport.TimerCheck) do
											n24 = n24 + 0.05
											v784.CFrame = p115

											for _ = 1, 2 do
												u445:ChangeState(Enum.HumanoidStateType.Jumping)
												task.wait()
											end
										end

										return
									end
								end

								task.wait(0.1)
							end
						end)(CFrame.new(u135(_tools.Teleport.Monument)))
					end

					g446 = false

					return
				end

				local Position = u444.Position
				local v448 = u135(_tools.Teleport.Monument)
				local v449 = (function(p116, p117, p118)
					-- upvalues: u443 (ref), _workspace (ref)
					local v778 = p117 - p116
					local raycastResult = nil
					local n25 = 0

					for i = 1, p118 do
						n25 = i

						local raycastParams = RaycastParams.new()

						raycastParams.FilterDescendantsInstances = { u443 }
						raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
						raycastResult = _workspace:Raycast(p116 + Vector3.new(0, i, 0), v778, raycastParams)

						if not raycastResult then
							return {
								FinalIteration = n25,
								Hit = raycastResult
							}
						end
					end

					return {
						FinalIteration = n25,
						Hit = raycastResult
					}
				end)(Position, v448, _tools.Teleport.MaxIteration)
				local v450 = u444.Position.Y + v449.FinalIteration + _tools.Teleport.Offset
				local n26 = 0

				while true do
					local v452 = u444

					if not (v450 > v452.Position.Y) then
						n26 = n26 + _tools.Teleport.Timer
						v452.Velocity = Vector3.new(0, 50, 0)

						if n26 >= _tools.Teleport.TimerCheck then
							v452.Velocity = Vector3.new(0, 0, 0)

							for _ = 1, 10 do
								u444.CFrame = CFrame.new(v448.X, u444.Position.Y, v448.Z)
								task.wait(0.1)
							end

							g446 = true
						end
					else
						v452.Velocity = Vector3.new(0, 50, 0)
						n26 = 0
					end

					if g446 then
						break
					end

					task.wait(_tools.Teleport.Timer)
				end
			until not g446
		end,
		DoubleClick = false,
		Tooltip = "Teleports the character to the given monument"
	})
	v117:AddDropdown("TpBypassType", {
		Values = {
			"State",
			"Vector"
		},
		Default = 1,
		Multi = false,
		Text = "Bypass type",
		Tooltip = "The bypass type it will use ( state is the best )",
		Callback = function(p119)
			-- upvalues: _tools (ref)
			_tools.Teleport.Type = p119
		end
	})
	v117:AddDropdown("MonumentType", {
		Values = {
			"Airfield",
			"Bunker",
			"Military"
		},
		Default = 1,
		Multi = false,
		Text = "Monument type",
		Tooltip = "The monument to teleport to",
		Callback = function(p120)
			-- upvalues: _tools (ref)
			_tools.Teleport.Monument = p120
		end
	})
	v117:AddInput("TeleportPos", {
		Default = "Position",
		Numeric = false,
		Finished = false,
		Text = "Position",
		Tooltip = "Position to teleport to (VECTOR)",
		Placeholder = "0,0,0",
		Callback = function(p121)
			-- upvalues: _tools (ref)
			_tools.Teleport.Pos = p121
		end
	})
	v117:AddSlider("YOffsset", {
		Text = "Y Offset",
		Default = 0,
		Min = 0,
		Max = 2000,
		Rounding = 1,
		Compact = false,
		Callback = function(p122)
			-- upvalues: _tools (ref)
			_tools.Teleport.Offset = p122
		end
	})
	v117:AddSlider("MaxIteration", {
		Text = "Max iteration",
		Default = 500,
		Min = 0,
		Max = 1000,
		Rounding = 1,
		Compact = false,
		Callback = function(p123)
			-- upvalues: _tools (ref)
			_tools.Teleport.MaxIteration = p123
		end
	})
	v117:AddSlider("Timer", {
		Text = "Timer",
		Default = 0.1,
		Min = 0,
		Max = 1,
		Rounding = 1,
		Compact = false,
		Callback = function(p124)
			-- upvalues: _tools (ref)
			_tools.Teleport.Timer = p124
		end
	})
	v117:AddSlider("MaxIteration", {
		Text = "Timer check",
		Default = 3,
		Min = 0,
		Max = 5,
		Rounding = 1,
		Compact = false,
		Callback = function(p125)
			-- upvalues: _tools (ref)
			_tools.Teleport.TimerCheck = p125
		end
	})
	v114:AddLabel("Custom building")
	v114:AddToggle("CustomBuilding", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Custom building (Rotate (r), Tilt (t))",
		Callback = function(p126)
			-- upvalues: _tools (ref)
			_tools.Building.Enabled = p126
		end
	})
	v114:AddSlider("CustomBuildingOffset", {
		Text = "Custom building Y offset (-) ",
		Default = 0,
		Min = 0,
		Max = 30,
		Rounding = 1,
		Compact = false,
		Callback = function(p127)
			-- upvalues: _tools (ref)
			_tools.Building.Offset = p127
		end
	})
	v114:AddToggle("CustomBuilding", {
		Text = "Hidden building hp",
		Default = false,
		Tooltip = "Makes you be able to place building without the hp",
		Callback = function(p128)
			-- upvalues: _tools (ref)
			_tools.Building.Unbreakable = p128
		end
	})
	v114:AddLabel("Autofarm")
	v114:AddToggle("Autofarm", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Autofarm on selected types (put tool on slot 6)",
		Callback = function(p129)
			-- upvalues: _tools (ref)
			_tools.Autofarm.Enabled = p129
		end
	})
	v114:AddSlider("AutofarmFrequency", {
		Text = "Frequency",
		Default = 10,
		Min = 1,
		Max = 100,
		Rounding = 1,
		Compact = false,
		Callback = function(p130)
			-- upvalues: _tools (ref)
			_tools.Autofarm.Frequency = p130 / 10
		end
	})
	v114:AddDropdown("Autofarmoptions", {
		Values = {
			"Tree",
			"Brimstone Ore",
			"Stone Ore",
			"Iron Ore",
			"Cloth"
		},
		Default = 1,
		Multi = true,
		Text = "Whitelist",
		Tooltip = "Whitelists things that can be farmed",
		Callback = function(_)
		end
	})

	local u136 = loadstring(game:HttpGet("https://pastefy.app/uOruVA9d/raw"))()

	local function u137(p132)
		-- upvalues: n8 (ref)
		local Contents = require(game:GetService("ReplicatedStorage").Modules.Client.Inventory.Inventory).MyInventory.Contents
		local t10 = {}
		local n27 = 0

		for k, v in pairs(Contents) do
			for _, v2 in pairs(v) do
				if v2 == p132 then
					t10[k] = k
					n27 = v.Quantity
				end
			end
		end

		return t10, n8, n27
	end

	function max_craft(p133, p134)
		local huge = math.huge

		for k, v in pairs(p134) do
			local v480 = p133[k] or 0
			local v481 = math.floor(v480 / v)

			if v481 < huge then
				huge = v481
			end
		end

		return huge
	end

	local function u138(p135)
		local t11 = {
			"Drop Item",
			false,
			game.Players.LocalPlayer:GetAttribute("InventoryId"),
			tostring(p135),
			false,
			false,
			CFrame.new(2534.936767578125, 19.476598739624023, -2651.9931640625, -0.3713858127593994, 0.719866156578064, -0.5864003300666809, -5.646684542170988E-08, 0.6315711140632629, 0.7753180265426636, 0.9284786581993103, 0.28794217109680176, -0.23455652594566345),
			35,
			26
		}

		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack(t11))
	end
	local function u139(p136)
		-- upvalues: u137 (ref)
		local v485, _ = u137(p136)

		for _, v in pairs(v485) do
			local t12 = {
				"Drop Item",
				false,
				game.Players.LocalPlayer:GetAttribute("InventoryId"),
				tostring(v),
				false,
				false,
				CFrame.new(2534.936767578125, 19.476598739624023, -2651.9931640625, -0.3713858127593994, 0.719866156578064, -0.5864003300666809, -5.646684542170988E-08, 0.6315711140632629, 0.7753180265426636, 0.9284786581993103, 0.28794217109680176, -0.23455652594566345),
				35,
				26
			}

			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack(t12))
		end
	end
	local function u140(p137, p138, p139, p140)
		-- upvalues: u137 (ref)
		local v494, _ = u137(p137)
		local str2 = tostring(math.random(p138, p139))

		for _, v in pairs(v494) do
			local t13 = {
				"Move Item",
				false,
				{
					FromContainerId = game.Players.LocalPlayer:GetAttribute("InventoryId"),
					FromSlot = tostring(v),
					SplitAmount = p140,
					ToSlot = str2,
					ToContainerId = game.Players.LocalPlayer:GetAttribute("InventoryId")
				},
				CFrame.new(-1521.513916015625, 98.92546844482422, -529.195068359375, -0.30212387442588806, -0.3019603490829468, 0.9041798114776611, 0, 0.9485046863555908, 0.31676313281059265, -0.9532686471939087, 0.09570170193910599, -0.2865659296512604),
				48,
				6
			}

			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack(t13))
		end
	end

	function craft_item(p141, p142, p143, p144, p145)
		-- upvalues: u136 (ref)
		local Item = u136[p141].Item

		for _ = 1, p142 do
			local t14 = {
				"Reserve Craft",
				false,
				tostring(Item),
				p143
			}
			local u509 = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RemoteFunction"):InvokeServer(unpack(t14))

			if p144 then
				task.spawn(function()
					-- upvalues: p145 (ref), u509 (ref)
					task.wait(p145)

					local t15 = {
						"Craft - Item Processed",
						false,
						u509,
						12,
						18
					}

					game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack(t15))
				end)
			else
				local t16 = {
					"Remove Craft",
					false,
					u509,
					15,
					18
				}

				game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack(t16))
			end
		end
	end

	local function u141(p146, p147)
		-- upvalues: u136 (ref), u140 (ref), u137 (ref), u139 (ref), u138 (ref)
		local _ = u136[p146].Item
		local t17 = {}
		local t18 = {}
		local t19 = {}

		for k, v in pairs(u136[p146].Recipes) do
			t17[k] = k
			u140(tostring(v), 60 + k, 60 + k, 1 / 0)

			local _, _, v521 = u137(tostring(v))

			t18[tostring(v)] = v521
			t19[tostring(v)] = u136[p146].Required
		end

		local v522 = max_craft(t18, t19)

		print(v522)
		task.wait(0.5)

		for _ = 1, p147 do
			craft_item(p146, 1, v522, u136[p146].c, u136[p146].w)
			u139(p146)
		end

		task.wait(0.5)

		for i = 1, 10 do
			if t17[i] then
				task.wait(1)
				u138(60 + i)
			end
		end
	end

	local n28 = 10
	local s16 = "Wood"

	v116:AddButton({
		Text = "Spawn item",
		Func = function()
			-- upvalues: u141 (ref), s16 (ref), n28 (ref)
			u141(s16, n28)
		end,
		DoubleClick = false,
		Tooltip = "Spawns item using spawn type"
	})
	v116:AddInput("ITEMTOSPAWNS", {
		Default = "Wood",
		Numeric = false,
		Finished = false,
		Text = "Item name",
		Tooltip = "Item to spawn",
		Placeholder = "Wood",
		Callback = function(p148)
			-- upvalues: s16 (ref)
			s16 = p148
		end
	})
	v116:AddSlider("SpawnIteration", {
		Text = "Iteration",
		Default = 10,
		Min = 1,
		Max = 100,
		Rounding = 0,
		Compact = false,
		Callback = function(p149)
			-- upvalues: n28 (ref)
			n28 = p149
		end
	})
	v116:AddLabel("Grab dropped item")

	local s17 = "AS Val"

	v116:AddButton({
		Text = "Grab item",
		Func = function()
			-- upvalues: _workspace (ref), s17 (ref), _Utilities (ref), u99 (ref)
			warn("--------------- PICKABLE ITEMS ---------------")

			for k, v in pairs(_workspace.Dropped:GetChildren()) do
				print(k, v.Name)
			end

			local s17_2 = _workspace.Dropped:FindFirstChild(s17)

			if s17_2 then
				local v530 = _Utilities.GetPlayerPrimary(u99.Name)

				if v530 then
					local u531 = v530
					local CFrame2 = v530.CFrame
					local WorldPivot = s17_2.WorldPivot
					local u534 = _Utilities.GetHumanoid(u99.Name)
					local _ = v530.CFrame

					if not u534 then
						return
					end

					local u536 = nil

					u536 = game:GetService("RunService").Heartbeat:Connect(function()
						-- upvalues: CFrame2 (ref), u531 (ref), s17_2 (ref), u536 (ref), WorldPivot (ref), u534 (ref)
						CFrame2 = u531.CFrame

						if not s17_2 or not s17_2.Parent then
							u536:Disconnect()
							u536 = nil
							task.wait(0.5)
							game:GetService("RunService"):UnbindFromRenderStep("pause cframe")
						end

						if WorldPivot then
							u534:ChangeState(Enum.HumanoidStateType.Jumping)
							task.spawn(function()
								-- upvalues: s17_2 (ref)
								local t20 = {
									"Pickup Item",
									false,
									s17_2,
									41,
									35
								}

								game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack(t20))
							end)
							u531.CFrame = WorldPivot
						end
					end)
					game:GetService("RunService"):BindToRenderStep("pause cframe", Enum.RenderPriority.First.Value, function()
						-- upvalues: u531 (ref), CFrame2 (ref)
						u531.CFrame = CFrame2
					end)

					return
				end

				return
			end
		end,
		DoubleClick = false,
		Tooltip = "Grabs dropped item"
	})
	v116:AddInput("ITEMTOGRAB", {
		Default = "AS Val",
		Numeric = false,
		Finished = false,
		Text = "Item name",
		Tooltip = "Item to grab",
		Placeholder = "AS Val",
		Callback = function(p150)
			-- upvalues: s17 (ref)
			s17 = p150
		end
	})

	local _ = 6
	local _ = 10
	local n29 = 5000

	local function _(p151)
		-- upvalues: _Utilities (ref), u99 (ref), _workspace (ref), n29 (ref)
		local v539 = _Utilities.GetPlayerPrimary(u99.Name)

		if not v539 then
			return
		end

		local PartBoundsInBox = _workspace:GetPartBoundsInBox(v539.CFrame, Vector3.new(n29, 1000, n29), nil)
		local v541 = nil
		local huge = math.huge

		for _, v in pairs(PartBoundsInBox) do
			if v.Parent.Name:match(p151) and v.Name ~= "Marker" and v.Parent:GetAttribute("YieldLeft") and v.Parent:GetAttribute("YieldLeft") > 500 then
				local v545 = v539.Position - v.Position
				local v546 = v545.X ^ 2 + v545.Y ^ 2 + v545.Z ^ 2

				if v546 < huge then
					huge = v546
					v541 = v
				end
			end
		end

		return v541, huge
	end

	local u149 = false

	v118:AddToggle("FlightEnabled", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Enables flight",
		Callback = function(p152)
			-- upvalues: _Settings (ref)
			_Settings.Movement.Flight.Enabled = p152
		end
	}):AddKeyPicker("FlightKeybind", {
		Default = "F",
		SyncToggleState = false,
		Mode = "Toggle",
		Text = "Flight",
		NoUI = false,
		Callback = function(p153)
			-- upvalues: u149 (ref)
			u149 = p153
		end,
		ChangedCallback = function(_)
		end
	})
	v118:AddSlider("DirectionSpeed", {
		Text = "Direction speed",
		Default = 100,
		Min = 0,
		Max = 1000,
		Rounding = 1,
		Compact = false,
		Callback = function(p155)
			-- upvalues: _Settings (ref)
			_Settings.Movement.Flight.DirectionSpeed = p155
		end
	})
	v118:AddSlider("DirectionSpeed", {
		Text = "Y speed",
		Default = 10,
		Min = 0,
		Max = 50,
		Rounding = 1,
		Compact = false,
		Callback = function(p156)
			-- upvalues: _Settings (ref)
			_Settings.Movement.Flight.YSpeed = p156
		end
	})
	v118:AddLabel("BunnyHop")
	v118:AddToggle("AutoBhop", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Enables bunny hop",
		Callback = function(p157)
			-- upvalues: _Settings (ref)
			_Settings.Movement.Bhop.Enabled = p157
		end
	})
	v118:AddSlider("BhopDelay", {
		Text = "Bunnyhop delay",
		Default = 0,
		Min = 0,
		Max = 200,
		Rounding = 1,
		Compact = false,
		Callback = function(p158)
			-- upvalues: _Settings (ref)
			_Settings.Movement.Bhop.AutobhopDelay = p158
		end
	})
	v118:AddSlider("BhopSpeed", {
		Text = "Strafe speed",
		Default = 10,
		Min = 0,
		Max = 1000,
		Rounding = 1,
		Compact = false,
		Callback = function(p159)
			-- upvalues: _Settings (ref)
			_Settings.Movement.Bhop.Value = p159
		end
	})
	v118:AddLabel("Walk speed")
	v118:AddToggle("WalkSpeedEnabled", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Enables walkspeed",
		Callback = function(p160)
			-- upvalues: _Settings (ref)
			_Settings.Movement.WalkSpeed.Enabled = p160
		end
	})
	v118:AddSlider("WalkSpeedSpeed", {
		Text = "Walk speed",
		Default = 17,
		Min = 0,
		Max = 200,
		Rounding = 1,
		Compact = false,
		Callback = function(p161)
			-- upvalues: _Settings (ref)
			_Settings.Movement.WalkSpeed.Value = p161
		end
	})
	v118:AddLabel("Jump Jower")
	v118:AddToggle("JumpPowerEnabled", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Enables Jumppower",
		Callback = function(p162)
			-- upvalues: _Settings (ref)
			_Settings.Movement.JumpPower.Enabled = p162
		end
	})
	v118:AddSlider("JumpPowrPower", {
		Text = "Jump Power",
		Default = 50,
		Min = 0,
		Max = 200,
		Rounding = 1,
		Compact = false,
		Callback = function(p163)
			-- upvalues: _Settings (ref)
			_Settings.Movement.JumpPower.Value = p163
		end
	})
	v119:AddToggle("AntiAimEnabled", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Enables anti aim",
		Callback = function(p164)
			-- upvalues: _Settings (ref)
			_Settings.Movement.AntiAim.Enabled = p164
		end
	})
	v119:AddDropdown("AntiAimYaw", {
		Values = {
			"Jitter",
			"Spin",
			"Backward",
			"Target",
			"Freeze"
		},
		Default = 1,
		Multi = false,
		Text = "Yaw",
		Tooltip = "The yaw of anti aim",
		Callback = function(p165)
			-- upvalues: _Settings (ref)
			_Settings.Movement.AntiAim.Type = p165
		end
	})
	v119:AddSlider("AntiAimYawOffset", {
		Text = "Yaw Offset",
		Default = 180,
		Min = 0,
		Max = 360,
		Rounding = 1,
		Compact = false,
		Callback = function(p166)
			-- upvalues: _Settings (ref)
			_Settings.Movement.AntiAim.Yaw = p166
		end
	})
	v120:AddToggle("TextEnabled", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Enables text esp",
		Callback = function(p167)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Text.Enabled = p167
		end
	})
	v120:AddToggle("TextOutline", {
		Text = "Outline",
		Default = false,
		Tooltip = "Displays outline",
		Callback = function(p168)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Text.Outline = p168
		end
	})
	v120:AddToggle("TextName", {
		Text = "Display name",
		Default = false,
		Tooltip = "Displays name",
		Callback = function(p169)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Text.Name = p169
		end
	})
	v120:AddToggle("TextHealth", {
		Text = "Display health",
		Default = false,
		Tooltip = "Displays health",
		Callback = function(p170)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Text.Health = p170
		end
	})
	v120:AddToggle("TextDistance", {
		Text = "Display distance",
		Default = false,
		Tooltip = "Displays distance",
		Callback = function(p171)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Text.Distance = p171
		end
	})
	v120:AddSlider("TextOffset", {
		Text = "Offset: ",
		Default = 15,
		Min = 1,
		Max = 50,
		Rounding = 1,
		Compact = false,
		Callback = function(p172)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Text.Offset = p172
		end
	})
	v120:AddLabel("Text Color"):AddColorPicker("tTextColor", {
		Default = Color3.fromRGB(255, 255, 255),
		Title = "Text Color",
		Transparency = 0,
		Callback = function(p173)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Text.TextColor = p173
		end
	})
	v120:AddSlider("TextTransparency", {
		Text = "Transparency: ",
		Default = 8,
		Min = 1,
		Max = 10,
		Rounding = 1,
		Compact = false,
		Callback = function(p174)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Text.Transparency = p174 / 10
		end
	})
	v120:AddSlider("TextSize", {
		Text = "Text size: ",
		Default = 30,
		Min = 1,
		Max = 50,
		Rounding = 1,
		Compact = false,
		Callback = function(p175)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Text.TextSize = p175
		end
	})
	v122:AddToggle("ChamsEspEnabled", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Displays chams",
		Callback = function(p176)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Chams.Enabled = p176
		end
	}):AddColorPicker("Chams color", {
		Default = Color3.fromRGB(255, 255, 255),
		Title = "Chams color",
		Transparency = 0,
		Callback = function(p177)
			-- upvalues: _Settings (ref), _Utilities (ref)
			_Settings.Visuals.Chams.Color = p177

			local v581 = _Utilities.GetPlayers()

			for _, v in pairs(v581) do
				_Utilities.UpdateChams(v)
			end
		end
	})
	v122:AddSlider("ChamsTransparency", {
		Text = "Transparency: ",
		Default = 7,
		Min = 1,
		Max = 10,
		Rounding = 1,
		Compact = false,
		Callback = function(p178)
			-- upvalues: _Settings (ref), _Utilities (ref)
			_Settings.Visuals.Chams.Transparency = p178 / 10

			local v585 = _Utilities.GetPlayers()

			for _, v in pairs(v585) do
				_Utilities.UpdateChams(v)
			end
		end
	})
	v122:AddLabel("Bullet tracer")
	v122:AddToggle("BulletTracer", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Visualize bullet tracer",
		Callback = function(p179)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Client.Bullet.Enabled = p179
		end
	}):AddColorPicker("BulletColor", {
		Default = Color3.new(0, 0, 1),
		Title = "Bullet Color",
		Transparency = 0,
		Callback = function(p180)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Client.Bullet.Color = p180
		end
	})
	v122:AddDropdown("MyDropdown", {
		Values = {
			"2d",
			"3d"
		},
		Default = 1,
		Multi = false,
		Text = "Bullet type",
		Tooltip = "The bullet tracer type: (3d: physical, 2d: drawing library)",
		Callback = function(p181)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Client.Bullet.Type = p181
		end
	})
	v122:AddSlider("BulletLifetime", {
		Text = "Lifetime",
		Default = 0.5,
		Min = 0,
		Max = 10,
		Rounding = 1,
		Compact = false,
		Callback = function(p182)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Client.Bullet.Lifetime = p182
		end
	})
	v122:AddSlider("BulletTransparency", {
		Text = "Transparency",
		Default = 0.7,
		Min = 0,
		Max = 1,
		Rounding = 1,
		Compact = false,
		Callback = function(p183)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Client.Bullet.Transparency = p183
		end
	})
	v121:AddToggle("TracerEnabled", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Enables tracer",
		Callback = function(p184)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Line.Enabled = p184
		end
	}):AddColorPicker("Tracer color", {
		Default = Color3.new(1, 1, 1),
		Title = "Line color",
		Transparency = 0,
		Callback = function(p185)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Line.Color = p185
		end
	})
	v121:AddDropdown("TracerOption", {
		Values = {
			"Top",
			"Mouse",
			"Bottom"
		},
		Default = 1,
		Multi = false,
		Text = "Tracer offset",
		Tooltip = "Selects an offset",
		Callback = function(p186)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Line.StartFrom = p186
		end
	})
	v121:AddSlider("TracerTransparency", {
		Text = "Transparency",
		Default = 6,
		Min = 1,
		Max = 10,
		Rounding = 1,
		Compact = false,
		Callback = function(p187)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Line.Transparency = p187 / 10
		end
	})
	v121:AddSlider("TracerThickness", {
		Text = "Thickness",
		Default = 1,
		Min = 1,
		Max = 5,
		Rounding = 1,
		Compact = false,
		Callback = function(p188)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Line.Thickness = p188
		end
	})
	v124:AddLabel("Ambient")
	v124:AddToggle("AmbientEnabled", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Enables ambient",
		Callback = function(p189)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.World.Ambient.Enabled = p189
		end
	})
	v124:AddLabel("Ambient color"):AddColorPicker("AmbientColor", {
		Default = Color3.new(1, 1, 1),
		Title = "Ambient color",
		Transparency = 0,
		Callback = function(p190)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.World.Ambient.Color = p190
		end
	})
	v124:AddLabel("Outdoor Ambient")
	v124:AddToggle("OutdoorAmbientEnabled", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Enables ambient",
		Callback = function(p191)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.World.OutdoorAmbient.Enabled = p191
		end
	}):AddColorPicker("OutdoorAmbientColor", {
		Default = Color3.new(1, 1, 1),
		Title = "Outdoor ambient color",
		Transparency = 0,
		Callback = function(p192)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.World.OutdoorAmbient.Color = p192
		end
	})
	v124:AddLabel("Colorshift - Top")
	v124:AddToggle("ColorshiftTopEnabled", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Enables ambient",
		Callback = function(p193)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.World.ColorShift_Top.Enabled = p193
		end
	}):AddColorPicker("ColorshiftTopColor", {
		Default = Color3.new(1, 1, 1),
		Title = "Colorshift top color",
		Transparency = 0,
		Callback = function(p194)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.World.ColorShift_Top.Color = p194
		end
	})
	v124:AddLabel("Colorshift - Bottom")
	v124:AddToggle("ColorshiftbottomEnabled", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Enables Colorshift",
		Callback = function(p195)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.World.ColorShift_Bottom.Enabled = p195
		end
	}):AddColorPicker("ColorshiftBotColor", {
		Default = Color3.new(1, 1, 1),
		Title = "Colorshift bottom color",
		Transparency = 0,
		Callback = function(p196)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.World.ColorShift_Bottom.Color = p196
		end
	})
	v125:AddLabel("Field Of View")
	v125:AddToggle("FieldOfViewEnabled", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Enables field of view",
		Callback = function(p197)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Client.FieldOfView.Enabled = p197
		end
	})
	v125:AddSlider("FieldOfViewValue", {
		Text = "Value",
		Default = 90,
		Min = 0,
		Max = 120,
		Rounding = 1,
		Compact = false,
		Callback = function(p198)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Client.FieldOfView.Value = p198
		end
	})
	v125:AddLabel("Arm viewmodel modifier")
	v125:AddToggle("ViewmodelEnabled", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Enables arm viewmodel customizer",
		Callback = function(p199)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Viewmodel.Enabled = p199
		end
	}):AddColorPicker("Viewmodel color", {
		Default = Color3.new(0, 0, 1),
		Title = "Arm color",
		Transparency = 0,
		Callback = function(p200)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Viewmodel.Color = p200
		end
	})
	v125:AddLabel("Size offset")
	v125:AddToggle("ViewmodelEnabledddd", {
		Text = "Enabled",
		Default = true,
		Tooltip = "Enables viewmodel size offset",
		Callback = function(p201)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Viewmodel.SizeEnabled = p201
		end
	})
	v125:AddSlider("ViewmodelSizeee", {
		Text = "Viewmodel size (divided by 100)",
		Default = 25,
		Min = 0,
		Max = 100,
		Rounding = 1,
		Compact = false,
		Callback = function(p202)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Viewmodel.Size = p202 / 100
		end
	})
	v125:AddDropdown("ViewmodelMaterial", {
		Values = {
			"ForceField",
			"Plastic",
			"Glass",
			"Neon"
		},
		Default = 1,
		Multi = false,
		Text = "Arm Material",
		Tooltip = "Viewmodel material type",
		Callback = function(p203)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Viewmodel.Material = Enum.Material[p203]
		end
	})
	v125:AddSlider("ViewmodelTransparency", {
		Text = "Arm Transparency",
		Default = 5,
		Min = 1,
		Max = 10,
		Rounding = 1,
		Compact = false,
		Callback = function(p204)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Viewmodel.Transparency = p204 / 10
		end
	})
	v125:AddLabel("Tool viewmodel modifier")
	v125:AddToggle("ViewmodelEnabledd", {
		Text = "Enabled",
		Default = false,
		Tooltip = "Enables tool viewmodel customizer",
		Callback = function(p205)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Viewmodel.Tools.Enabled = p205
		end
	}):AddColorPicker("Viewmodel colorr", {
		Default = Color3.new(0, 0, 1),
		Title = "Tool color",
		Transparency = 0,
		Callback = function(p206)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Viewmodel.Tools.Color = p206
		end
	})
	v125:AddDropdown("ViewmodelMateriall", {
		Values = {
			"ForceField",
			"Plastic",
			"Glass",
			"Neon"
		},
		Default = 4,
		Multi = false,
		Text = "Arm Material",
		Tooltip = "Viewmodel material type",
		Callback = function(p207)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Viewmodel.Tools.Material = Enum.Material[p207]
		end
	})
	v125:AddSlider("ViewmodelTransparency", {
		Text = "Tool Transparency",
		Default = 5,
		Min = 1,
		Max = 10,
		Rounding = 1,
		Compact = false,
		Callback = function(p208)
			-- upvalues: _Settings (ref)
			_Settings.Visuals.Viewmodel.Tools.Transparency = p208 / 10
		end
	})

	local u150 = _Utilities.GetHumanoid(_Utilities.GetLocalPlayer().Name)
	local n30 = 0
	local u152 = true
	local timestamp2 = tick()

	if u150 then
		u152 = true
		n30 = u150.Health
		timestamp2 = tick()
		u150.HealthChanged:Connect(function(p209)
			-- upvalues: u152 (ref), timestamp2 (ref), _Utilities (ref), n30 (ref), _tools (ref), u150 (ref)
			if not u152 and tick() - timestamp2 > 1.3 then
				_Utilities.log("RESOLVING", "Resolved frozen variable!", "CLIENT")
				timestamp2 = tick()
				u152 = true
			end

			if p209 < n30 then
				local v619 = n30 - p209

				_Utilities.log("RESOLVING", "Attempting to resolve health: " .. tostring(v619), "SERVER")

				if _tools.Godmode.Enabled and u152 and u150.Health ~= 0 then
					u152 = false

					local t21 = {
						"Drown Tick",
						false,
						-(u150.MaxHealth - u150.Health) / 5,
						nil
					}

					game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack(t21))
				end
			elseif p209 > n30 then
				timestamp2 = tick()
				u152 = true
				_Utilities.log("RESOLVED", "Successfully resolved health!", "SERVER")
			end

			n30 = p209
		end)
	end

	_Utilities.GetLocalPlayer().CharacterAdded:Connect(function(character)
		-- upvalues: n30 (ref), u152 (ref), timestamp2 (ref), _Utilities (ref), _tools (ref)
		local Humanoid = character:WaitForChild("Humanoid", 20)

		if character:FindFirstChild("Humanoid") then
			n30 = 0
			u152 = true
			n30 = Humanoid.Health
			timestamp2 = tick()
			Humanoid.HealthChanged:Connect(function(p210)
				-- upvalues: u152 (ref), timestamp2 (ref), _Utilities (ref), n30 (ref), _tools (ref), Humanoid (ref)
				if not u152 and tick() - timestamp2 > 1.3 then
					_Utilities.log("RESOLVING", "Resolved frozen variable!", "CLIENT")
					timestamp2 = tick()
					u152 = true
				end

				if p210 < n30 then
					local v792 = n30 - p210

					_Utilities.log("RESOLVING", "Attempting to resolve health: " .. tostring(v792), "SERVER")

					if _tools.Godmode.Enabled and u152 and Humanoid.Health ~= 0 then
						local t22 = {
							"Drown Tick",
							false,
							-(Humanoid.MaxHealth - Humanoid.Health) / 5,
							nil
						}

						game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack(t22))
						u152 = false
					end
				elseif p210 >= n30 then
					timestamp2 = tick()
					u152 = true
					_Utilities.log("RESOLVED", "Successfully resolved health!", "SERVER")
				end

				n30 = p210
			end)
		end
	end)

	local cFrame = CFrame.new(0, 0, 0)
	local u155 = _workspace

	_Utilities.Connections.CamChildAdded = CurrentCamera.ChildAdded:Connect(function(child)
		-- upvalues: u155 (ref), cFrame (ref)
		if (child.Name ~= "Model" or child.Name ~= "Viewmodel") and child.PrimaryPart then
			u155 = child

			if u155:FindFirstChildWhichIsA("MeshPart") then
				cFrame = u155:FindFirstChildWhichIsA("MeshPart").CFrame
			end
		end
	end)

	local u156 = nil
	local u157 = nil

	_Utilities.Connections.CamDescendantAdded = CurrentCamera.DescendantAdded:Connect(function(descendant)
		-- upvalues: u156 (ref), _Settings (ref), u157 (ref)
		if descendant:IsA("Model") and descendant.Name == "Viewmodel" then
			u156 = descendant

			if _Settings.Visuals.Viewmodel.SizeEnabled then
				descendant:ScaleTo(_Settings.Visuals.Viewmodel.Size)
			end
		end

		if descendant:IsDescendantOf(u156) then
			if descendant:IsA("Model") then
				u157 = descendant
			end

			if (descendant:IsA("BasePart") or descendant:IsA("MeshPart")) and _Settings.Visuals.Viewmodel.Enabled and descendant.Transparency ~= 1 then
				descendant.Color = _Settings.Visuals.Viewmodel.Color
				descendant.Transparency = _Settings.Visuals.Viewmodel.Transparency
				descendant.Material = _Settings.Visuals.Viewmodel.Material
			end
		end

		if descendant:IsDescendantOf(u157) and _Settings.Visuals.Viewmodel.Tools.Enabled then
			if not descendant:IsA("MeshPart") and (not descendant:IsA("BasePart") or descendant.Transparency == 1) then
				if descendant:IsA("SurfaceAppearance") then
					descendant:Destroy()
				end
			else
				descendant.Color = _Settings.Visuals.Viewmodel.Tools.Color
				descendant.Transparency = _Settings.Visuals.Viewmodel.Tools.Transparency
				descendant.Material = _Settings.Visuals.Viewmodel.Tools.Material
			end
		end
	end)

	local n31 = 60
	local n32 = 60
	local u160 = false
	local u161 = false

	_Services.UserInputService.InputBegan:Connect(function(input, p211)
		-- upvalues: _tools (ref), CurrentCamera (ref), u155 (ref), cFrame (ref), u160 (ref), u161 (ref)
		if not p211 then
			if _tools.Building.Enabled and input.UserInputType == Enum.UserInputType.MouseButton1 then
				local Name = CurrentCamera:FindFirstChild(u155.Name)

				if Name then
					if u155:FindFirstChildWhichIsA("MeshPart") then
						cFrame = u155:FindFirstChildWhichIsA("MeshPart").CFrame
					end

					local t23 = {
						"Place Object",
						false,
						Name.Name,
						"cf",
						nil,
						[7] = false
					}

					game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RemoteFunction"):InvokeServer(unpack(t23))
				end
			end

			if input.KeyCode ~= Enum.KeyCode.R then
				if input.KeyCode == Enum.KeyCode.T then
					u161 = true
				end
			else
				u160 = true
			end

			return
		end
	end)
	_Services.UserInputService.InputEnded:Connect(function(input)
		-- upvalues: u160 (ref), u161 (ref)
		if input.KeyCode ~= Enum.KeyCode.R then
			if input.KeyCode == Enum.KeyCode.T then
				u161 = false
			end
		else
			u160 = false
		end
	end)
	_Services.Players.PlayerRemoving:Connect(function(player)
		-- upvalues: _Tracer (ref), _Text (ref)
		if _Tracer[player.Name] then
			_Tracer[player.Name]:Destroy()
			_Tracer[player.Name] = nil
		end

		if _Text[player.Name] then
			_Text[player.Name]:Destroy()
			_Text[player.Name] = nil
		end
	end)
	clone2.Name = "so tuff"
	clone2.Parent = _workspace
	clone3.Name = "Visualiziariaroro"
	clone3.Humanoid.PlatformStand = true
	clone3.HumanoidRootPart.Anchored = true
	clone2.HumanoidRootPart.Anchored = true
	clone2.HumanoidRootPart.CanCollide = false
	clone2.HumanoidRootPart.CFrame = CFrame.new(1000000, 1000000, 100000)

	for _, v in pairs(CurrentCamera:GetDescendants()) do
		if v:IsA("BasePart") or v:IsA("MeshPart") then
			v.CanQuery = false
		end
	end

	for _, v in pairs(clone2:GetChildren()) do
		if v.Name ~= "HumanoidRootPart" and v.Name ~= "Humanoid" then
			v:Destroy()
		end
	end

	for _, v in pairs(clone3:GetChildren()) do
		if not v:IsA("BasePart") and not v:IsA("MeshPart") and not v:IsA("Humanoid") then
			v:Destroy()
		elseif v:IsA("BasePart") or v:IsA("MeshPart") then
			v.CanCollide = false
		end
	end

	_Utilities.Connections.LegitBot = _Services.RunService.RenderStepped:Connect(function()
		-- upvalues: u99 (ref), drawing (ref), _Settings (ref), drawing2 (ref), _Utilities (ref), _Hitbox (ref), _workspace (ref), t7 (ref), u131 (ref), clone3 (ref), n12 (ref), vector3 (ref), n13 (ref)
		local v631 = u99
		local Mouse = v631:GetMouse()

		drawing.Position = Vector2.new(Mouse.X, Mouse.Y + 60)
		drawing.Radius = _Settings.LegitBot.Fov
		drawing.Visible = _Settings.LegitBot.FieldOfView

		if not _Settings.LegitBot.Enabled then
			drawing2.Visible = false
		end

		local v633 = _Utilities.ClosestToMouseRadius(_Settings.LegitBot.Teamcheck, _Settings.LegitBot.Wallcheck, _Settings.LegitBot.Fov)

		if not v633 then
			drawing2.Visible = false
		else
			getgenv().ClosestToMousePlayer = v633

			local _SettingsLegitBotHitbox = _Utilities.GetCharacter(v633.Name):FindFirstChild(_Settings.LegitBot.Hitbox)

			if not _SettingsLegitBotHitbox then
				drawing2.Visible = false
			else
				getgenv().ClosestToMousePlayerHitbox = _SettingsLegitBotHitbox

				local v635, v636 = _Utilities.WorldToScreen(_SettingsLegitBotHitbox.Position)

				if v636 then
					drawing2.Visible = true
					drawing2.from = Vector2.new(Mouse.X, Mouse.Y + 55)
					drawing2.to = v635
				else
					drawing2.Visible = false
				end

				if Options.LegitbotKeybind:GetState() then
					if _Settings.LegitBot.Type ~= "Lock" then
						if _Settings.LegitBot.Type ~= "Silent" then
						end
					else
						_Utilities.SetCamPos(_SettingsLegitBotHitbox.Position, _Settings.LegitBot.Smoothness)
					end
				end
			end
		end

		if _Hitbox.Enabled then
			for _, v in pairs(_workspace.Players:GetChildren()) do
				if v.Name ~= _Utilities.GetLocalPlayer().Name and v:FindFirstChild(_Hitbox.Hitbox) then
					v:FindFirstChild(_Hitbox.Hitbox).Transparency = 0.5
					v:FindFirstChild(_Hitbox.Hitbox).Size = Vector3.new(_Hitbox.Size, _Hitbox.Size, _Hitbox.Size)
					v:FindFirstChild(_Hitbox.Hitbox).CanCollide = false
				end
			end
		end

		if t7.Reload.Enabled then
			local v639 = _Utilities.GetSelectedItem()

			if v639 then
				local t24 = {
					"Weapon Reload",
					false,
					tonumber(v639.Name),
					"\255\255\255\255",
					17,
					31,
					47,
					15,
					2,
					36,
					27,
					33,
					13,
					31,
					11,
					20,
					19,
					15,
					46,
					27,
					19,
					10,
					9,
					1,
					12,
					36,
					37,
					36,
					32,
					3,
					4,
					26,
					12,
					5,
					8,
					2
				}

				game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack(t24))
			end
		end

		local v641 = _Utilities.GetPlayerPrimary(v631.Name)

		if u131 then
			if not v641 then
				return
			end

			if clone3.HumanoidRootPart then
				local v642 = v641.CFrame.LookVector * n12
				local v643 = v641.CFrame + v642

				vector3 = CFrame.new(v643.X, v643.Y + (n13 - 25), v643.Z)
				clone3.HumanoidRootPart.CFrame = CFrame.new(v643.X, v643.Y + (n13 - 25), v643.Z)
			end
		else
			local v644 = v641.CFrame.LookVector * 10000
			local v645 = v641.CFrame + v644

			vector3 = v645
			clone3.HumanoidRootPart.CFrame = v645
		end
	end)

	local t25 = {
		Ambient = _Services.Lighting.Ambient,
		OutdoorAmbient = _Services.Lighting.Ambient,
		Colorshift_Top = _Services.Lighting.ColorShift_Top,
		Colorshift_Bottom = _Services.Lighting.ColorShift_Bottom,
		FieldOfView = CurrentCamera.FieldOfView
	}

	_Utilities.Connections.Visuals = _Services.RunService.RenderStepped:Connect(function(dt)
		-- upvalues: _Utilities (ref), u99 (ref), _Settings (ref), _Chams (ref), CurrentCamera (ref), t25 (ref), _Services (ref), _tools (ref), u155 (ref), u160 (ref), n31 (ref), u161 (ref), n32 (ref), cFrame (ref)
		local v647 = _Utilities.GetPlayers()

		for _, v in pairs(v647) do
			if v ~= u99 then
				if not _Settings.Visuals.Chams.Enabled then
					if _Chams:FindFirstChild(v.Name) then
						_Chams:FindFirstChild(v.Name):Destroy()
					end
				else
					_Utilities.UpdateChams(v)
				end

				_Utilities.UpdateText(v)
				_Utilities.UpdateTracer(v)
			end
		end

		if _Settings.Visuals.Client.FieldOfView.Enabled then
			CurrentCamera.FieldOfView = _Settings.Visuals.Client.FieldOfView.Value
		elseif CurrentCamera.FieldOfView ~= t25.FieldOfView then
			CurrentCamera.FieldOfView = t25.FieldOfView
		end

		if _Settings.Visuals.World.Ambient.Enabled then
			_Services.Lighting.Ambient = _Settings.Visuals.World.Ambient.Color
		else
			_Services.Lighting.Ambient = t25.Ambient
		end

		if _Settings.Visuals.World.OutdoorAmbient.Enabled then
			_Services.Lighting.OutdoorAmbient = _Settings.Visuals.World.OutdoorAmbient.Color
		else
			_Services.Lighting.OutdoorAmbient = t25.OutdoorAmbient
		end

		if _Settings.Visuals.World.ColorShift_Bottom.Enabled then
			_Services.Lighting.ColorShift_Bottom = _Settings.Visuals.World.ColorShift_Bottom.Color
		else
			_Services.Lighting.ColorShift_Bottom = t25.Colorshift_Bottom
		end

		if not _Settings.Visuals.World.ColorShift_Top.Enabled then
			_Services.Lighting.ColorShift_Top = t25.Colorshift_Top
		else
			_Services.Lighting.ColorShift_Top = _Settings.Visuals.World.ColorShift_Top.Color
		end

		if _tools.Building.Enabled and u155 then
			if u160 then
				local PrimaryPart = u155.PrimaryPart

				PrimaryPart.CFrame = PrimaryPart.CFrame * CFrame.Angles(0, math.rad(n31 * dt), 0)
			end

			if u161 then
				local PrimaryPart = u155.PrimaryPart

				PrimaryPart.CFrame = PrimaryPart.CFrame * CFrame.Angles(math.rad(n32 * dt), 0, 0)
			end

			if u155 then
				cFrame = u155.PrimaryPart.CFrame
			end
		end
	end)

	local timestamp3 = tick()
	local UserInputService = _Services.UserInputService
	local u171 = UserInputService

	_Utilities.Connections.Movement = _Services.RunService.Heartbeat:Connect(function()
		-- upvalues: _Utilities (ref), u99 (ref), _Settings (ref), u149 (ref), u171 (ref), CurrentCamera (ref), _Services (ref), UserInputService (ref), timestamp3 (ref)
		local v652 = _Utilities.GetCharacter(u99.Name)

		if not v652 then
			return
		end

		local v653 = _Utilities.GetHumanoid(u99.Name)

		if v653 then
			local v654 = _Utilities.GetPlayerPrimary(u99.Name)

			if not v654 then
				return
			end

			if _Settings.Movement.Flight.Enabled and u149 then
				local DirectionSpeed = _Settings.Movement.Flight.DirectionSpeed
				local zero = Vector3.zero

				if u171:IsKeyDown(Enum.KeyCode.W) then
					zero = zero + CurrentCamera.CFrame.LookVector
				end

				if u171:IsKeyDown(Enum.KeyCode.S) then
					zero = zero - CurrentCamera.CFrame.LookVector
				end

				if u171:IsKeyDown(Enum.KeyCode.A) then
					zero = zero - CurrentCamera.CFrame.RightVector
				end

				if u171:IsKeyDown(Enum.KeyCode.D) then
					zero = zero + CurrentCamera.CFrame.RightVector
				end

				if u171:IsKeyDown(Enum.KeyCode.Space) then
					zero = zero + Vector3.new(0, 1, 0)
				end

				if u171:IsKeyDown(Enum.KeyCode.LeftControl) then
					zero = zero - Vector3.new(0, 1, 0)
				end

				if zero.Magnitude > 0 then
					zero = zero.Unit
				end

				local v657 = zero * DirectionSpeed
				local vector3_2 = Vector3.new(v657.X, math.clamp(v657.Y, -_Settings.Movement.Flight.YSpeed, _Settings.Movement.Flight.YSpeed), v657.Z)

				v654.AssemblyLinearVelocity = Vector3.new(0, -9000000000, 0)
				_Services.RunService.RenderStepped:Wait()
				v654.AssemblyLinearVelocity = vector3_2

				if vector3_2.Magnitude > 0 then
					v654.CFrame = CFrame.lookAt(v654.Position, v654.Position + vector3_2)
				end
			end

			if _Settings.Movement.Bhop.Enabled and UserInputService:IsKeyDown(Enum.KeyCode.Space) then
				if v652 and v653 and v654 then
					if v654.Velocity.Y < 5 and v653:GetState() ~= Enum.HumanoidStateType.Freefall and tick() - timestamp3 > _Settings.Movement.Bhop.AutobhopDelay then
						timestamp3 = tick()
						v654.Velocity = v654.Velocity + Vector3.new(0, 35, 0)
					end

					local n33 = 0

					if UserInputService:IsKeyDown("A") then
						n33 = 90
					end

					if UserInputService:IsKeyDown("S") then
						n33 = 180
					end

					if UserInputService:IsKeyDown("D") then
						n33 = 270
					end

					if UserInputService:IsKeyDown("A") and UserInputService:IsKeyDown("W") then
						n33 = 45
					end

					if UserInputService:IsKeyDown("D") and UserInputService:IsKeyDown("W") then
						n33 = 315
					end

					if UserInputService:IsKeyDown("D") and UserInputService:IsKeyDown("S") then
						n33 = 225
					end

					if UserInputService:IsKeyDown("A") and UserInputService:IsKeyDown("S") then
						n33 = 145
					end

					local _, v661, _ = CurrentCamera.CFrame:ToOrientation()
					local v663 = CFrame.new(CurrentCamera.CFrame.Position) * CFrame.Angles(0, v661, 0) * CFrame.Angles(0, math.rad(n33), 0)

					v654.CFrame = v654.CFrame + Vector3.new(v663.LookVector.X, 0, v663.LookVector.Z) * _Settings.Movement.Bhop.Value / 50
				end
			end

			if _Settings.Movement.JumpPower.Enabled then
				v653.JumpPower = _Settings.Movement.JumpPower.Value
			end

			if _Settings.Movement.WalkSpeed.Enabled then
				v653.WalkSpeed = _Settings.Movement.WalkSpeed.Value
			end

			if _Settings.Movement.AntiAim.Enabled then
				if _Settings.Movement.AntiAim.Type == "None" then
					if v653.AutoRotate == false then
						v653.AutoRotate = true
					end
				elseif _Settings.Movement.AntiAim.Type == "Jitter" then
					if v653.AutoRotate == true then
						v653.AutoRotate = false
					end

					v654.CFrame = v654.CFrame * CFrame.Angles(0, math.rad(math.random(0, _Settings.Movement.AntiAim.Yaw)), 0)
				elseif _Settings.Movement.AntiAim.Type ~= "Spin" then
					if _Settings.Movement.AntiAim.Type == "Freeze" then
						if v653.AutoRotate == true then
							v653.AutoRotate = false
						end
					elseif _Settings.Movement.AntiAim.Type ~= "Target" then
						if _Settings.Movement.AntiAim.Type == "Backward" then
							if v653.AutoRotate == true then
								v653.AutoRotate = false
							end

							local CurrentCameraCFrame = CurrentCamera.CFrame
							local vector3_3 = Vector3.new(CurrentCameraCFrame.LookVector.X, 0, CurrentCameraCFrame.LookVector.Z)

							v654.CFrame = CFrame.new(v654.Position, v654.Position + -vector3_3) * CFrame.Angles(0, _Settings.Movement.AntiAim.Yaw, 0)
						end
					else
						if v653.AutoRotate == true then
							v653.AutoRotate = false
						end

						local huge = math.huge
						local vector3_4 = nil

						for _, v in pairs(game:GetService("Players"):GetPlayers()) do
							_Utilities.GetCharacter(v.Name)

							local v670 = _Utilities.GetPlayerPrimary(v.Name)

							if v ~= u99 and v654 and v670 then
								local Magnitude = (v654.Position - v670.Position).Magnitude

								if Magnitude < huge then
									huge = Magnitude

									local Unit = (v654.Position - v670.Position).Unit

									vector3_4 = Vector3.new(-Unit.X, 0, -Unit.Z)
									v654.CFrame = CFrame.new(v654.Position, v654.Position + vector3_4) * CFrame.Angles(0, math.rad(_Settings.Movement.AntiAim.Yaw), 0)
								end
							end
						end

						if vector3_4 ~= nil then
							v654.CFrame = CFrame.new(v654.Position, v654.Position + vector3_4) * CFrame.Angles(0, math.rad(_Settings.Movement.AntiAim.Yaw), 0)
						end
					end
				else
					if v653.AutoRotate == true then
						v653.AutoRotate = false
					end

					v654.CFrame = v654.CFrame * CFrame.Angles(0, math.rad(_Settings.Movement.AntiAim.Yaw), 0)
				end
			elseif v653.AutoRotate == false then
				v653.AutoRotate = true
			end

			return
		end
	end)

	local timestamp4 = tick()

	tick()

	local n34 = 0

	_Utilities.Connections.Remotes = _Services.RunService.RenderStepped:Connect(function()
		-- upvalues: n34 (ref), u99 (ref), t6 (ref), _Utilities (ref), _workspace (ref), _tools (ref), timestamp4 (ref)
		n34 = u99:GetAttribute("LastPing")

		if t6.Enabled then
			local v673 = _Utilities.GetPlayerPrimary(_Utilities.GetLocalPlayer().Name)

			if v673 then
				local cFrame2 = CFrame.new(v673.Position)
				local vector3_5 = Vector3.new(t6.Range, t6.Range, t6.Range)
				local PartBoundsInBox = _workspace:GetPartBoundsInBox(cFrame2, vector3_5)

				for _, v in pairs(PartBoundsInBox) do
					if not v:IsDescendantOf(v673.Parent) and v:IsDescendantOf(_workspace.Players) and v.Name == "Head" then
						local t26 = {
							"Melee Hit",
							false,
							v,
							v.CFrame,
							Enum.Material.Plastic,
							5,
							true,
							v.Parent,
							nil,
							[10] = false,
							[11] = 19,
							[12] = 30,
							[13] = 20,
							[14] = 17,
							[15] = 46,
							[16] = 8,
							[17] = 30,
							[18] = 32,
							[19] = 36,
							[20] = 14,
							[21] = 37,
							[22] = 19,
							[23] = 28,
							[24] = 36,
							[25] = 48,
							[26] = 33,
							[27] = 23,
							[28] = 39,
							[29] = 15,
							[30] = 45,
							[31] = 10,
							[32] = 40,
							[33] = 12,
							[34] = 19,
							[35] = 12,
							[36] = 50,
							[37] = 44,
							[38] = 50,
							[39] = 3,
							[40] = 16,
							[41] = 8
						}

						game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack(t26))
					end
				end
			end
		end

		if _tools.Autofarm.Enabled and (_tools.Autofarm.Frequency == 1 or tick() - timestamp4 >= _tools.Autofarm.Frequency) then
			timestamp4 = tick()

			local v680 = _Utilities.GetPlayerPrimary(_Utilities.GetLocalPlayer().Name)

			if v680 then
				local cFrame3 = CFrame.new(v680.Position)
				local vector3_6 = Vector3.new(8, 8, 8)
				local PartBoundsInBox = _workspace:GetPartBoundsInBox(cFrame3, vector3_6)

				for _, v in pairs(PartBoundsInBox) do
					if not v.Parent:IsDescendantOf(_workspace.Ignored) then
						for k, _ in pairs(Options.Autofarmoptions.Value) do
							if k == "Cloth" and string.match(v.Parent.Name, k) then
								local t27 = {
									"Pickup Cloth Plant",
									false,
									v.Parent,
									22,
									1,
									nil
								}

								game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack(t27))
							end

							if string.match(v.Parent.Name, k) and k ~= "Cloth" then
								local t28 = {
									"Melee Hit",
									false,
									v.Parent.PrimaryPart,
									CFrame.new(2972.951171875, 38.21372985839844, -1657.814208984375, 0.7463709115982056, -0.016416961327195168, -0.665327787399292, 1.862645149230957E-09, 0.9996958374977112, -0.024667484685778618, 0.6655303239822388, 0.018411090597510338, 0.7461437582969666),
									Enum.Material.Wood,
									6,
									false,
									v.Parent,
									nil,
									nil,
									[10] = not string.match(v.Parent.Name, "Ore"),
									[11] = 32,
									[12] = 23,
									[13] = 24,
									[14] = 24,
									[15] = 24,
									[16] = 48
								}

								game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack(t28))
							end
						end
					end
				end
			end
		end
	end)

	local _ = _Services.LogService
	local _ = _Services.ContentProvider

	getgenv().val = 0 / 0
	hookmetamethod(game, "__namecall", u2)

	local u176 = nil

	u176 = hookmetamethod(game, "__namecall", function(p212, ...)
		-- upvalues: _Utilities (ref), CurrentCamera (ref), _Settings (ref), str (ref), _tools (ref), n34 (ref), u104 (ref), u176 (ref), cFrame (ref), _Services (ref)
		local v691 = getnamecallmethod(true)

		if v691 == "GetAttribute" then
			local t29 = { ... }

			getcallingscript()

			if typeof(t29[1]) == "string" and t29[1] == "PlayerSettingsProcessed" then
				_Utilities.log("ANTICHEAT", "Spoofed CLIENT ENV", "CLIENT")

				return true
			end
		end

		if p212 == CurrentCamera and v691 == "ScreenPointToRay" and _Settings.LegitBot.Enabled and _Settings.LegitBot.Type == "Silent" then
			local ClosestToMousePlayerHitbox = getgenv().ClosestToMousePlayerHitbox

			if ClosestToMousePlayerHitbox then
				local CFramePosition = CurrentCamera.CFrame.Position
				local v695 = (ClosestToMousePlayerHitbox.Position - CFramePosition).Unit * 10000

				return Ray.new(CFramePosition, v695)
			end
		end

		if v691 == "InvokeServer" then
			local t30 = { ... }

			if bypass_mode == "Manual" then
				for _, v in pairs(t30) do
					if typeof(v) == "buffer" then
						return
					end
				end
			end

			if t30[1] == "Check Player Settings" then
				return
			end

			if t30[1] == str then
				_Utilities.log("SPOOFED", "SUCCESSFULY SPOOFED LONE AC WITH ASTRAL-AC", "CLIENT")

				return
			end

			if _tools.Anticheat.Enabled and tostring(n34) ~= "nan" then
				if t30[1] == "Ping" and not u104.Unloaded then
					_Utilities.log("SPOOFED", "Spoofed SERVER velocity", "SERVER")
					t30[4] = 0 / 0

					return u176(p212, unpack(t30))
				end
			elseif _tools.Anticheat.Enabled and t30[1] == "Ping" and tostring(n34) == "nan" then
				return "Pong"
			end

			if t30[1] == "Place Object" and not u104.Unloaded then
				if not _tools.Building.Enabled then
					if _tools.Building.Unbreakable then
						t30[5] = game.Lighting
					end

					return u176(p212, unpack(t30))
				end

				if t30[8] == "\255\255" and _tools.Building.Unbreakable then
					t30[5] = game.Lighting
				end

				t30[4] = cFrame - Vector3.new(0, _tools.Building.Offset, 0)

				if _tools.Building.Unbreakable then
					t30[5] = game.Lighting
				end

				return u176(p212, unpack(t30))
			end
		end

		if v691 == "FireServer" then
			local t31 = { ... }

			if tostring(p212) == "RemoteEvent" then
				if bypass_mode == "Manual" then
					for _, v in pairs(t31) do
						if typeof(v) == "buffer" then
							return
						end
					end
				end

				if t31[1] == "Check Player Settings" then
					warn("oh yeahh")

					return task.wait(9000000000)
				end

				if t31[1] == str then
					_Utilities.log("SPOOFED", "SUCCESSFULY SPOOFED LONE AC WITH ASTRAL-AC", "CLIENT")

					return
				end

				if t31[1] == "TFD" and not u104.Unloaded then
					return
				end

				if t31[1] == "Create Projectile" then
					if _Settings.Visuals.Client.Bullet.Enabled and not u104.Unloaded then
						local vector3_7 = Vector3.new(0, 0, 0)

						if not _Settings.LegitBot.Enabled or _Settings.LegitBot.Type ~= "Silent" then
							for k, v in pairs(t31) do
								if k ~= "HitVector" then
									if typeof(v) == "table" then
										for k2, v3 in pairs(v) do
											if k2 == "HitVector" then
												vector3_7 = v3
											end
										end
									end
								else
									vector3_7 = v
								end
							end
						elseif getgenv().ClosestToMousePlayer and getgenv().ClosestToMousePlayerHitbox then
							vector3_7 = getgenv().ClosestToMousePlayerHitbox.Position
						end

						if vector3_7 and typeof(vector3_7) == "Vector3" then
							if _Settings.Visuals.Client.Bullet.Type == "3d" then
								task.spawn(function()
									-- upvalues: _Utilities (ref), CurrentCamera (ref), vector3_7 (ref), _Settings (ref)
									local v794 = _Utilities.beam(CurrentCamera.CFrame.p, vector3_7)
									local BulletLifetime = _Settings.Visuals.Client.Bullet.Lifetime

									v794.Transparency = _Settings.Visuals.Client.Bullet.Transparency

									for i = 1, 60 * BulletLifetime do
										wait()
										v794.Transparency = i / (60 * BulletLifetime)
									end

									wait(BulletLifetime)
									v794:Destroy()
								end)
							else
								task.spawn(function()
									-- upvalues: _Utilities (ref), _Settings (ref), vector3_7 (ref), _Services (ref), CurrentCamera (ref)
									local v797 = _Utilities.GetCharacter(_Utilities.GetLocalPlayer().Name)

									if not v797 then
										return
									end

									local Head = v797:FindFirstChild("Head")

									if not Head then
										return
									end

									local BulletLifetime = _Settings.Visuals.Client.Bullet.Lifetime
									local drawing4 = Drawing.new("Line")

									drawing4.Visible = true
									drawing4.Color = _Settings.Visuals.Client.Bullet.Color
									drawing4.Thickness = 2
									drawing4.Transparency = _Settings.Visuals.Client.Bullet.Transparency

									local HeadPosition = Head.Position
									local u802 = vector3_7
									local timestamp5 = tick()
									local connection = nil

									connection = _Services.RunService.RenderStepped:Connect(function()
										-- upvalues: timestamp5 (ref), BulletLifetime (ref), drawing4 (ref), connection (ref), CurrentCamera (ref), HeadPosition (ref), u802 (ref)
										if tick() - timestamp5 > BulletLifetime then
											drawing4:Remove()
											connection:Disconnect()

											return
										end

										local v806, _ = CurrentCamera:WorldToViewportPoint(HeadPosition)
										local v808, _ = CurrentCamera:WorldToViewportPoint(u802)

										drawing4.From = Vector2.new(v806.X, v806.Y)
										drawing4.To = Vector2.new(v808.X, v808.Y)
									end)
								end)
							end
						end
					end

					return u176(p212, unpack(t31))
				end
			end
		end

		return u176(p212, ...)
	end)
	u104:SetWatermarkVisibility(true)

	local timestamp6 = tick()
	local n35 = 0
	local n36 = 60
	local connection = game:GetService("RunService").RenderStepped:Connect(function()
		-- upvalues: n35 (ref), timestamp6 (ref), n36 (ref), u104 (ref), s10 (ref), n8 (ref)
		n35 = n35 + 1

		if tick() - timestamp6 >= 1 then
			n36 = n35
			timestamp6 = tick()
			n35 = 0
		end

		u104:SetWatermark((s10 .. " | %s fps | %s ms | UID: %s "):format(math.floor(n36), math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()), n8))
	end)

	u104.KeybindFrame.Visible = true
	u104:OnUnload(function()
		-- upvalues: connection (ref), _Utilities (ref), _Tracer (ref), _Text (ref), drawing (ref), drawing2 (ref), u104 (ref)
		connection:Disconnect()

		for _, v in pairs(_Utilities.Connections) do
			v:Disconnect()
		end

		getgenv().Tools = {}
		getgenv().Settings = {}

		for _, v in pairs(_Utilities.GetPlayers()) do
			if _Tracer[v.Name] then
				_Tracer[v.Name]:Destroy()
				_Tracer[v.Name] = nil
			end

			if _Text[v.Name] then
				_Text[v.Name]:Destroy()
				_Text[v.Name] = nil
			end
		end

		drawing:Destroy()
		drawing2:Destroy()
		u104.Unloaded = true
	end)

	local v181 = t5["UI Settings"]:AddLeftGroupbox("Menu")

	v181:AddButton("Unload", function()
		-- upvalues: u104 (ref)
		u104:Unload()
	end)
	v181:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", {
		Default = "End",
		NoUI = true,
		Text = "Menu keybind"
	})
	u104.ToggleKeybind = Options.MenuKeybind
	v105:SetLibrary(u104)
	v106:SetLibrary(u104)
	v106:IgnoreThemeSettings()
	v106:SetIgnoreIndexes({ "MenuKeybind" })
	v105:SetFolder(s11)
	v106:SetFolder(s11 .. "/Saves")
	v106:BuildConfigSection(t5["UI Settings"])
	v105:ApplyToTab(t5["UI Settings"])
	v106:LoadAutoloadConfig()
