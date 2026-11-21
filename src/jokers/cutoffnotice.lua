SMODS.Joker {
    key = "raresuitc",
    atlas = 'jokers',
    blueprint_compat = true,
    unlocked = true,
    discovered = false,
    rarity = 3,
    cost = 8,
    pos = { x = 5, y = 1 },
    config = { extra = { mult = 0, mult_gain = 5, suit = "Clubs" } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult_gain, localize(card.ability.extra.suit, 'suits_singular') } }
    end,
    calculate = function(self, card, context)
        if context.destroy_card and not context.blueprint then
            if context.cardarea == G.play and context.destroy_card:is_suit(card.ability.extra.suit) then
                SMODS.scale_card(card, {
                    ref_table = card.ability.extra,
                    ref_value = "mult",
                    scalar_value = "mult_gain",
                    message_colour = G.C.ATTENTION
                })
                return {
                    remove = true }
            end
        end
        if context.joker_main then
            return {
                mult = card.ability.extra.mult
            }
        end
    end
}

-- thanks to able for the code
