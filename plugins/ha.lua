do

local function run(msg,matches)

local reply_id = msg['id']
if is_momod(msg) and matches[1]== '#help' then
  local alnaze = [[

  ا⬇️➖➖➖➖➖➖➖⬇️
💭 لرؤية اوامر الطرد والحظر .. اضغط #help1
💭 لرؤية اوامر القفل اضغط #help2
💭 لرؤية اوامر الفتح اضغط #help3
💭 لرؤية اوامر رفع وتنزيل الادمنيه اضغط #help4
💭 لرؤية اوامر الوضع واوامر اخرى اضغط #help5
💭 لرؤية اوامر اضافية اضغط #help6
ا⬆️➖➖➖➖➖➖➖⬆️
ا@medoo_313_m
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
  "^(#help)$",
},
run = run
}
end