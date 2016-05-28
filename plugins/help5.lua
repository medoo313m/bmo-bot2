do

local function run(msg,matches)

local reply_id = msg['id']
if is_momod(msg) and matches[1]== '#help5' then
  local alnaze = [[


✅GENERAL orders✅
💭#pv help : send messege 
💭#setname : (name)
💭#setrules : (rules)
💭#setabout : (about)
💭#setphoto : Send photo
💭#clean [rules|about|modlist|mutelist]
💭#info : Show your
💭#id : show your id
💭#newlink : To make a link
💭#link : Show link group
💭#linkpv : send messege 
💭#settings : Show  group settings
💭#del : delete Message
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
  "^(#help5)$",
},
run = run
}
end