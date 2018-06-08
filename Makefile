
output/vida.lua: src/md5.lua src/temp.lua src/vida.lua
	mkdir -p output/
	luajit tools/combiner.lua src/md5.lua src/path.lua src/temp.lua src/vida.lua > output/vida.lua

install: output/vida.lua
	install output/vida.lua /usr/local/share/lua/5.1/vida.lua

unittest: output/vida.lua
	cd test && \
		LUA_PATH="../output/?.lua;../tools/?.lua" luajit test_vida.lua

demo:
	cd test && \
		LUA_PATH="../output/?.lua;../tools/?.lua;./?.lua" luajit demo.lua

test: unittest demo

.PHONY: install unittest demo test
