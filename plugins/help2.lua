do

local function run(msg,matches)

local reply_id = msg['id']
if is_momod(msg) and matches[1]== '#help2' then
  local alnaze = [[

✅Orders lock✅
💭#link k : lock links
💭#k flood : lock flood
💭#k spam : lock spam
💭#k arabic : lock arabic
💭#k member : lock Added
💭#k rtl : lock Added Collective
💭#sticker k : lock sticker
💭#k contacts : lock contacts
💭#k all : lock all
💭#audio k : lock audio
💭#gif k : lock gifs
💭#photo k : lock photo
💭#video k : lock video
💭#k fwd : lock fwd
💭#k reply : lock reply
💭#fuck k : fuck lock
💭#smail k : smail lock
💭#smoke k : smoke lock
💭#tafia k : tafia lock
💭#love k : love lock
💭#file k : file lock
💭#media k : lock all media
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
  "^(#help2)$",
},
run = run
}
end