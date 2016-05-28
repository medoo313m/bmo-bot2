do

local function run(msg,matches)

local reply_id = msg['id']
if is_momod(msg) and matches[1]== '#help1' then
  local alnaze = [[

✅orders kick and ban ..✅
💭#kick : kick member (replay & @username)
💭#ban : baned member (replay & @username)
💭#unban : To unblock member 
💭#kickme : out of  group
💭#banlist List Blocked
↪️➖➖➖➖➖➖➖➖➖➖↩️
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
  "^(#help1)$",
},
run = run
}
end