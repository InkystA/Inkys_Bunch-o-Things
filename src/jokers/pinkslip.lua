SMODS.Joker {
    key = "raresuith",
    atlas = 'jokers',
    unlocked = false,
    blueprint_compat = true,
    rarity = 3,
    cost = 8,
    pos = { x = 2, y = 1 },
    config = { extra = { xmult = 1, xmult_gain = 0.2, suit = "Hearts" } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.xmult_gain, localize(card.ability.extra.suit, 'suits_singular') } }
    end,
    calculate = function(self, card, context)
        if context.destroy_card and not context.blueprint then
            if context.cardarea == G.play and context.destroy_card:is_suit(card.ability.extra.suit) then
                SMODS.scale_card(card, {
                    ref_table = card.ability.extra,
                    ref_value = "xmult",
                    scalar_value = "xmult_gain",
                    message_colour = G.C.ATTENTION
                })
                return {
                    remove = true }
            end
        end
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult
            }
        end
    end
}

-- thanks to able for the code
