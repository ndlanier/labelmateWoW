--LabelMate--
--For use of changing hotkey labels--

local replace = string.gsub

local function updatehotkey(self, actionButtonType)
	local hotkey = _G[self:GetName() .. 'HotKey']
    local text = hotkey:GetText()
    
    text = replace(text, 's%-', 'S')
    text = replace(text, 'a%-', 'A')
    text = replace(text, 'c%-', 'C')
    text = replace(text, 'Mouse Button ', 'M')
    text = replace(text, 'Mouse Wheel Up', 'MU')
    text = replace(text, 'Mouse Wheel Down', 'MD')
    text = replace(text, 'Middle Mouse', 'M3')
    text = replace(text, 'Num Pad ', 'N')
    text = replace(text, 'Page Up', 'PU')
    text = replace(text, 'Page Down', 'PD')
    text = replace(text, 'Spacebar', 'SpB')
    text = replace(text, 'Insert', 'Ins')
    text = replace(text, 'Home', 'Hm')
    text = replace(text, 'Delete', 'Del')
    
    if hotkey:GetText() == RANGE_INDICATOR then
        hotkey:SetText('')
    else
        hotkey:SetText(text)
    end
end
 
hooksecurefunc("ActionButton_UpdateHotkeys", updatehotkey)
