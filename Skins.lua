local ADDON = ...

local LBF = LibStub and LibStub("LibButtonFacade", true)
if (not LBF) then 
	return 
end

local path = [[Interface\AddOns\]] .. ADDON .. [[\media\]]
local BLANK = [[Interface\ChatFrame\ChatFrameBackground]]

-- Masque believes all buttons should be 36x36 points large. 
-- This is a convenience function to figure out the "right" sizes
-- based on the size of the source textures and the size 
-- of the actual content within that texture file. 
local scale = function(contentSize, sourceTextureSize)
	return (sourceTextureSize or contentSize)/contentSize * 36
end

LBF:AddSkin("DiabolicUI BagButton", {
	Normal = {
		Width = scale(64,128),
		Height = scale(64,128),
		TexCoords = { 0, 1, 0, 1 },
		Color = { 1, 1, 1, 1 },
		Texture = path .. "DiabolicUI_Button_64x64_Border.tga", 
		EmptyTexture = path .. "DiabolicUI_Button_64x64_Border.tga",
		EmptyColor = { 1, 1, 1, 1 },
		Static=true
	},
	Border = {
		Width = scale(64,128),
		Height = scale(64,128),
		TexCoords = { 0, 1, 0, 1 },
		BlendMode = "BLEND",
		Color = { 1, 1, 1, 1 },
		Texture = path .. "DiabolicUI_Button_64x64_BorderHighlight.tga"
	},
	Highlight = {
		Width = scale(64,128),
		Height = scale(64,128),
		TexCoords = { 0, 1, 0, 1 },
		BlendMode = "ADD",
		Color = { 1, 1, 1, .25 },
		Texture = path .. "DiabolicUI_Button_64x64_BorderHighlight.tga"
	},	
	Backdrop = {
		Width = scale(64,128),
		Height = scale(64,128),
		TexCoords = { 0, 1, 0, 1 },
		Color = { 1, 1, 1, 1 },
		Texture = path .. "DiabolicUI_Button_64x64_BackdropBag.tga"
	},
	Checked = {
		Width = scale(64,128),
		Height = scale(64,128),
		TexCoords = { 0, 1, 0, 1 },
		BlendMode = "BLEND",
		Color = { 1, 1, 1, 1 },
		Texture = path .. "DiabolicUI_Button_64x64_Checked.tga"
	},
	Icon = {
		-- The scale() usage here shrinks the icon to fit
		Width = scale(64,54),
		Height = scale(64,54),
		TexCoords = { 5/64, 59/64, 5/64, 59/64 }
	},
	Flash = {
		Width = scale(64,54),
		Height = scale(64,54),
		Color = { .7, 0, 0, .30 },
		Texture = BLANK
	},
	Cooldown = {
		Width = scale(64,54),
		Height = scale(64,54),
	},
	Pushed = {
		Width = scale(64,54),
		Height = scale(64,54),
		Color = { 1, .97, 0, .25 },
		Texture = BLANK
	},
	AutoCastable = {
		Width = scale(86),
		Height = scale(86),
		OffsetX = 0,
		OffsetY = 0,
		Texture = [[Interface\Buttons\UI-AutoCastableOverlay]]
	},
	Disabled = {
		Hide = true,
	},
	Gloss = {
		Hide = true
	},
	Name = {
		Width = 54,
		Height = 10,
		OffsetY = 4
	},
	Count = {
		Width = 54,
		Height = 8,
		OffsetX = 0,
		OffsetY = 0
	},
	HotKey = {
		Width = 54,
		Height = 10,
		OffsetX = 0
	},
	Duration = {
		Width = 54,
		Height = 10,
		OffsetY = 0
	},
	AutoCast = {
		Width = 24,
		Height = 24,
		OffsetX = 1,
		OffsetY = -1
	}
}, true)

LBF:AddSkin("DiabolicUI ActionButton", {
	Normal = {
		Width = scale(36,64),
		Height = scale(36,64),
		TexCoords = { 0, 1, 0, 1 },
		Color = { 1, 1, 1, 1 },
		Texture = path .. "DiabolicUI_Button_36x36_Border.tga", 
		EmptyTexture = path .. "DiabolicUI_Button_36x36_Border.tga",
		EmptyColor = { 1, 1, 1, 1 },
		Static=true
	},
	Border = {
		Width = scale(36,64),
		Height = scale(36,64),
		TexCoords = { 0, 1, 0, 1 },
		BlendMode = "BLEND",
		Color = { 1, 1, 1, 1 },
		Texture = path .. "DiabolicUI_Button_36x36_BorderHighlight.tga"
	},
	Highlight = {
		Width = scale(36,64),
		Height = scale(36,64),
		TexCoords = { 0, 1, 0, 1 },
		BlendMode = "ADD",
		Color = { 1, 1, 1, .25 },
		Texture = path .. "DiabolicUI_Button_36x36_BorderHighlight.tga"
	},	
	Backdrop = {
		Width = scale(64,128),
		Height = scale(64,128),
		TexCoords = { 0, 1, 0, 1 },
		Color = { 1, 1, 1, 1 },
		Texture = path .. "DiabolicUI_Button_64x64_BackdropWeapon.tga"
	},
	Checked = {
		Width = scale(36,64),
		Height = scale(36,64),
		TexCoords = { 0, 1, 0, 1 },
		BlendMode = "BLEND",
		Color = { 1, 1, 1, 1 },
		Texture = path .. "DiabolicUI_Button_36x36_Checked.tga"
	},
	Icon = {
		-- The scale() usage here shrinks the icon to fit
		Width = scale(64,54),
		Height = scale(64,54),
		TexCoords = { 5/64, 59/64, 5/64, 59/64 }
	},
	Flash = {
		Width = scale(64,54),
		Height = scale(64,54),
		Color = { .7, 0, 0, .30 },
		Texture = BLANK
	},
	Cooldown = {
		Width = scale(64,54),
		Height = scale(64,54),
	},
	Pushed = {
		Width = scale(64,54),
		Height = scale(64,54),
		Color = { 1, .97, 0, .25 },
		Texture = BLANK
	},
	AutoCastable = {
		Width = scale(86),
		Height = scale(86),
		OffsetX = 0,
		OffsetY = 0,
		Texture = [[Interface\Buttons\UI-AutoCastableOverlay]]
	},
	Disabled = {
		Hide = true,
	},
	Gloss = {
		--Hide = true,
		Width = scale(64,52),
		Height = scale(64,52),
		TexCoords = { 15/64, 48/64, 15/64, 48/64 },
		BlendMode = "BLEND",
		Color = { 1, 1, 1, .25 },
		Texture = path .. "gUI4_Button_44x44_Gloss_Warcraft.tga"
	},
	Name = {
		Width = 36,
		Height = 10,
		OffsetY = 4
	},
	Count = {
		Width = 36,
		Height = 8,
		OffsetX = 0,
		OffsetY = 0
	},
	HotKey = {
		Width = 36,
		Height = 10,
		OffsetX = 0
	},
	Duration = {
		Width = 36,
		Height = 10,
		OffsetY = 0
	},
	AutoCast = {
		Width = 24,
		Height = 24,
		OffsetX = 1,
		OffsetY = -1
	}
}, true)
