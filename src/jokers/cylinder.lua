SMODS.Joker {
    key = 'testjoker',
    atlas = 'jokers',
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = {
            chips = 25
        },
    },
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
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end
    end

}
