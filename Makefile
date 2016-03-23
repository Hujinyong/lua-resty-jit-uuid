.PHONY: test lint bench

test:
	@prove

lint:
	@luacheck -q lib --std 'luajit'

bench:
	@luarocks install uuid
	@luarocks install lua-resty-uuid
	@luarocks install lua_uuid
	@luajit bench.lua
