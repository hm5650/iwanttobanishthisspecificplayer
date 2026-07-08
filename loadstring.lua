local url = "https://raw.githubusercontent.com/hm5650/iwanttobanishthisspecificplayer/refs/heads/main/iwanttobanishthisspecificplayer.lua"

local req = request or http_request or (syn and syn.request)
local data
if req then
	local res = req({
		Url = url,
		Method = "GET"
	})
	if res and res.Body then
		data = res.Body
	end
else
	pcall(function()
		data = game:HttpGet(url)
	end)
end
if data then
	loadstring(data)()
else
	warn("looper flinger gui phailed to load :(")
end
