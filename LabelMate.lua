{\rtf1\ansi\ansicpg1252\cocoartf1504
{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\fmodern\fcharset0 Courier;\f2\fnil\fcharset0 Verdana;
}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;\csgray\c100000;}
\margl1440\margr1440\vieww9000\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 --LabelMate--\
--For use of changing hotkey labels--\
\
local replace = string.gsub\
\
local function updatehotkey(self, actionButtonType)\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf0 	
\f1\fs26\fsmilli13333 local hotkey = _G[self:GetName() .. 'HotKey']
\f2 \

\f1 \'a0 \'a0 local text = hotkey:GetText()
\f2 \

\f1 \'a0 \'a0 
\f2 \

\f1 \'a0 \'a0 text = replace(text, 's%-', 'S')
\f2 \

\f1 \'a0 \'a0 text = replace(text, 'a%-', 'A')
\f2 \

\f1 \'a0 \'a0 text = replace(text, 'c%-', 'C')
\f2 \

\f1 \'a0 \'a0 text = replace(text, 'Mouse Button ', 'M')
\f2 \

\f1 \'a0 \'a0 text = replace(text, 'Mouse Wheel Up', 'MU')
\f2 \

\f1 \'a0 \'a0 text = replace(text, 'Mouse Wheel Down', 'MD')
\f2 \

\f1 \'a0 \'a0 text = replace(text, 'Middle Mouse', 'M3')
\f2 \

\f1 \'a0 \'a0 text = replace(text, 'Num Pad ', 'N')
\f2 \

\f1 \'a0 \'a0 text = replace(text, 'Page Up', 'PU')
\f2 \

\f1 \'a0 \'a0 text = replace(text, 'Page Down', 'PD')
\f2 \

\f1 \'a0 \'a0 text = replace(text, 'Spacebar', 'SpB')
\f2 \

\f1 \'a0 \'a0 text = replace(text, 'Insert', 'Ins')
\f2 \

\f1 \'a0 \'a0 text = replace(text, 'Home', 'Hm')
\f2 \

\f1 \'a0 \'a0 text = replace(text, 'Delete', 'Del')
\f2 \

\f1 \'a0 \'a0 
\f2 \

\f1 \'a0 \'a0 if hotkey:GetText() == RANGE_INDICATOR then
\f2 \

\f1 \'a0 \'a0 \'a0 \'a0 hotkey:SetText('')
\f2 \

\f1 \'a0 \'a0 else
\f2 \

\f1 \'a0 \'a0 \'a0 \'a0 hotkey:SetText(text)
\f2 \

\f1 \'a0 \'a0 end
\f2 \

\f1 end
\f2 \

\f1 \'a0
\f2 \

\f1 hooksecurefunc("ActionButton_UpdateHotkeys", updatehotkey)}