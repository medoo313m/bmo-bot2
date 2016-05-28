do

local function run(msg,matches)

local reply_id = msg['id']
if is_momod(msg) and matches[1]== '#help4' then
  local alnaze = [[


✅Special orders supervisors✅
💭#setowner : Upgrade director
💭#promote : Upgrade addicted
💭#demote : Reduce addicted
💭#admins : List managers
↪️➖➖➖➖➖↩️
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
  "^(#help4)$",
},
run = run
}
end