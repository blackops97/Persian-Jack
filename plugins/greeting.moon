greetings =
	"سلام `%s` !": "سلام #{bot_first_name}"
	"بای `%s` !": "بای #{bot_first_name}"
	"خداحافظ `%s` !": "خداحافظ #{bot_first_name}"
	"تو `%s` !": "تو #{bot_first_name}"
	"سلام `%s` !
من `#{bot_first_name}` هستم
یک ربات برنامه نویسی شده توسط SeedTeam
فارسی شده توسط[FoxTeam](https://telegram.me/Fox_Team
[Persian-Jack](https://github.com/Fox-Team/Persian-Jack) | @Fox_Team": "^[!/#]about$"
--Plz do not remove the repo url :^)
run = (msg,matches) ->
	for k,v in pairs greetings
		if msg.text\match v
			return k\format msg.from.first_name



description = "*About and greeting*"
usage = "`/about`
Info about #{bot_first_name}
`Hi #{bot_first_name}`
`Bye #{bot_first_name}`
"
patterns = greetings
return {
	:run
	:description
	:usage
	:patterns
}
