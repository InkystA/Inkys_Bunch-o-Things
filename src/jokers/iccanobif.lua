SMODS.Joker {
    key = "iccanobif",
    atlas = "jokers",
    pos = {
        x = 3,
        y = 0
    },
    blueprint_compat = true,
    rarity = 1,
    cost = 5,
    config = { extra = { chips = 13 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips } }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            local id = context.other_card:get_id()
            if id == 4 or id == 6 or id == 7 or id == 9 or id == 10 then
                return {
                    chips = card.ability.extra.chips
                }
            end
        end
    end
}
