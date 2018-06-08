-- This file was automatically generated for the LuaDist project.

package = "vida"
version = "v0.1-7"

-- LuaDist source
source = {
  tag = "v0.1-7",
  url = "git://github.com/LuaDist-testing/vida.git"
}
-- Original source
-- source = {
--     url = 'https://github.com/nwhitehead/vida/archive/v0.1-7.tar.gz',
--     dir = 'vida-0.1-7'
-- }

description = {
    summary = "Mix C code into your LuaJIT code seamlessly.",
    detailed = [[
        Vida is a Lua module that allows you to include C code and
        call it right from your Lua code without messing around with
        makefiles, compilers, or any other nonsense. Requires LuaJIT.
    ]],
    homepage = "https://github.com/nwhitehead/vida",
    license = "MIT <http://opensource.org/licenses/MIT>"
}

dependencies = {
    "lua ~> 5.1"
}

build = {
    type = 'builtin',
    modules = {
        vida = "output/vida.lua"
    }
}