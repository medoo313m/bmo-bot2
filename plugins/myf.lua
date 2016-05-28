do
function run(msg, matches)
elseif  matches[1] == "redis" and is_sudo(msg) then 
    return io.popen("redis-server"):read('*all')
    end
end
return {
  patterns = {
    "^[/!#](redis)"
  },
  run = run
}
end