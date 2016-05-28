[Forwarded from DEV || HELP 🖥 TV (S A E C O 🔕 💭 || 🇹🇷)]
do
local function run(msg, matches)

  delete_msg(msg.id, ok_cb, true)
    return "DON'T SEND LONG MSGS"
 end
local function run(msg, matches)
  if ( tonumber(string.len(matches[1])) > 360 ) then
  delete_msg(msg.id, ok_cb, true)
  if (is_momod(msg)) then
      return nil
  else
     delete_msg(msg.id, ok_cb, true)
  return "لا ترسل رسائل طويله 😎"
    end
  end 
end
return {
  patterns = {
    "^(.*)",
    "^(.+)",
  },
  run = run,
}
end