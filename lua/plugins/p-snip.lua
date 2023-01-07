local ls = require 'luasnip'

ls.config.set_config{
    history = true,
    update_events = "TextChanged,TextChangedI",
    enable_autosnippets = true
}

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("cmake", {
    s("cmake_mini_cpp", {
        t({"cmake_minimum_required(VERSION "}),i(1),t({")"}),
        t({"","","set(CMAKE_CXX_COMPILER g++)"}),
        t({"","","project("}), i(2), t({")"}),
        t({"","","add_executable("}),i(3),t({")"})
    })
})

ls.add_snippets("cpp", {
    s("cpp_base_1class",{
        t({"#include <iostream>"}),
        t({"","", "using namespace std;"}),
        t({"","", "class "}), i(1),
        t({"", "{"}),
        t({""}),i(0),
        t({"", "};"}),
        t({"",""}),
        t({"", "int main(void)"}),
        t({"", "{"}),
        t({"", "", "    return 0;"}),
        t({"", "}"}),

    })
})

ls.add_snippets("lua",{
    s("Love2d",{
        t({"function love.load()"}),
        t({"","    "}),i(1),
        t({"", "end"}),
        t({"",""}),
        t({"function love.update()"}),
        t({"","    "}),i(2),
        t({"", "end"}),
        t({"",""}),
        t({"function love.draw()"}),
        t({"","    "}),i(3),
        t({"", "end"}),
    })
})
