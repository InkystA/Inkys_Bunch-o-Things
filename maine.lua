SMODS.Atlas {
    key = 'jokers',
    path = 'jokers.png',
    px = 71,
    py = 95
}
SMODS.Atlas {
    key = 'balatro',
    prefix_config = {
        key = false
    },
    path = 'balatroBOTlogo.png',
    px = 333,
    py = 216
}
local jokers_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/jokers")
for _, file in ipairs(jokers_src) do
    assert(SMODS.load_file("src/jokers/" .. file))()
end
