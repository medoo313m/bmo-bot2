do

local function run(msg,matches)

local reply_id = msg['id']
if is_momod(msg) and matches[1]== '#help3' then
  local alnaze = [[


✅Orders lock✅
💭#link u : lock links
💭#u flood : lock flood
💭#u spam : lock spam
💭#u arabic : lock arabic
💭#u member : lock Added
💭#u rtl : lock Added Collective
💭#sticker u : lock sticker
💭#u contacts : lock contacts
💭#u all : lock all
💭#audio u : lock audio
💭#gif u : lock gifs
💭#photo u : lock photo
💭#video u : lock video
💭#u fwd : lock fwd
💭#u reply : lock reply
💭#fuck u : fuck lock
💭#smail u : smail lock
💭#smoke u : smoke lock
💭#tafia u : tafia lock
💭#love u : love lock
💭#file u : file lock
💭#media u : lock all media
💭#setflood [5-200]
↪️➖➖➖➖➖➖➖➖➖↩️
@medoo_313_m
   ]] 
reply_msg(reply_id, alnaze, ok_cb, false)
end

local reply_id = msg['id']
if not is_momod(msg) then
local alnaz = "للمشرفين فقط 🖕🏿😎"
reply_msg(reply_id, alnaze, ok_cb, false)
end

end
return {
patterns ={
  "^(#help3)$",
},
run = run
}
end