

function QuantifyWatchList_Initialize(self, max_rows, button_height)
  self:SetBackdrop(BACKDROP_QUANTIFY_WATCHLIST)
  
  self.max_rows = max_rows
  self.row_height = button_height
  
  self.items = {}
  
  for i = 1, max_rows do
    local button = CreateFrame("Button", "WatchListRow"..tostring(i), self, "QuantifyWatchListRowTemplate")
    button:SetScript("OnEnter", QuantifyWatchListRowTemplate_OnEnter)
    button:SetScript("OnLeave", QuantifyWatchListRowTemplate_OnLeave)
    if i == 1 then
      button:SetPoint("TOP", self)
    else
      button:SetPoint("TOP", _G["WatchListRow"..tostring(i-1)], "BOTTOM")
    end
    _G["WatchListRow"..tostring(i)] = button
  end
end

function QuantifyWatchList_Update(self)
 	local numItems = #self.items
  
  local height = numItems > 0 and (self.row_height * numItems) or self.row_height
  self:SetHeight(height)
  local width = self:GetWidth()
	for line = 1, self.max_rows do
		local button = _G["WatchListRow"..tostring(line)]
    button:SetWidth(width)
    local label,value = button:GetChildren()
    --label:SetWidth(math.floor(width * .6))
    label:SetHeight(self.row_height)
    _G[label:GetName().."Text"]:SetWidth(math.floor(width * .6))
    
		if line > numItems then
			button:Hide()
		else
      QuantifyStatRowTemplate_SetText(button,self.items[line])
			button:Show()
		end  
  end
end

function QuantifyWatchList_Add(self, item)
  if (#self.items < self.max_rows) then
    table.insert(self.items,item)
  end
end