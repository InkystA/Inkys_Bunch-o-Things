--[[ SMODS.Joker {
    key = 'thdjoker',
    atlas = 'jokers',
    pos = {
        x = 1,
        y = 2
    },
    config = {
        extra = {
            chips = 25
        },
    },
    blueprint_compat = false,
    rarity = 1,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips
            }
        }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.play and context.main_scoring then
            return {
                chips = card.ability.extra.chips
            }
        end
    end

}
 ]]
-- eventually will figure out how to change ranks?
