--@MAXDEVD

do
local function run(msg,matches)

if is_momod(msg) and matches[1]== '#pv' and matches[2]== 'help' or matches[1]== '@MAXDEVD' then
local info = [[

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

send_large_msg("user#id"..msg.from.id, info)
end

if is_momod(msg) and matches[1]== 'pv' and matches[2]== 'help' or matches[1]== '@MAXDEVD' then
return 'تم ارسال الاوامر اللى الخاص ان لن يتم ارسالهه قم بأرسال رساله الى البوت'
end
local reply_id = msg['id']
if not is_momod(msg) then
local  info = 'للبشرفين فقط'
reply_msg(reply_id, info, ok_cb, false)
end 

end
return {
patterns ={
  "^(#pv) (help)$",
  
},
run = run
}
end