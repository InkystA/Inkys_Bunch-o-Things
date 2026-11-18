SMODS.Joker {
    key = "raresuitd",
    atlas = 'jokers',
    unlocked = false,
    blueprint_compat = true,
    rarity = 3,
    cost = 8,
    pos = { x = 3, y = 1 },
    config = { extra = { dollars = 0, dollars_gain = 1, suit = "Diamonds" } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.dollars, card.ability.extra.dollars_gain, localize(card.ability.extra.suit, 'suits_singular') } }
    end,
    calc_dollar_bonus = function(self, card)
        return card.ability.extra.dollars
    end,
    calculate = function(self, card, context)
        if context.destroy_card and not context.blueprint then
            if context.cardarea == G.play and context.destroy_card:is_suit(card.ability.extra.suit) then
                SMODS.scale_card(card, {
                    ref_table = card.ability.extra,
                    ref_value = "dollars",
                    scalar_value = "dollars_gain",
                    message_colour = G.C.ATTENTION
                })
                return {
                    remove = true }
            end
        end
    end
}

-- thanks to able for the code
