do

local function pre_process(msg)


local hash = 'mate:'..msg.to.id
if redis:get(hash) and msg.reply_id and not is_sudo(msg) and not is_owner(msg) and not is_momod(msg) and not is_admin1(msg) then
delete_msg(msg.id, ok_cb, true)
return "done"
end

return msg
end




local function run(msg, matches)
chat_id = msg.to.id

if is_momod(msg) and matches[1] == 'k' then


local hash = 'mate:'..msg.to.id
redis:set(hash, true)
return "تم قفل الرد على الرسائل🔒"
elseif is_momod(msg) and matches[1] == 'u' then
local hash = 'mate:'..msg.to.id
redis:del(hash)
return "تم السماح بالرد على الرسائل 🔓"
end

end

return {
patterns = {
'^[/!#](k) reply$',
'^[/!#](u) reply$'
},
run = run,
pre_process = pre_process
}
end