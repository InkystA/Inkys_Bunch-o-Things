SMODS.Joker {
    key = "raresuits",
    atlas = 'jokers',
    unlocked = false,
    blueprint_compat = true,
    rarity = 3,
    cost = 8,
    pos = { x = 4, y = 1 },
    config = { extra = { chips = 0, chips_gain = 30, suit = "Spades" } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips_gain, localize(card.ability.extra.suit, 'suits_singular') } }
    end,
    calculate = function(self, card, context)
        if context.destroy_card and not context.blueprint then
            if context.cardarea == G.play and context.destroy_card:is_suit(card.ability.extra.suit) then
                SMODS.scale_card(card, {
                    ref_table = card.ability.extra,
                    ref_value = "chips",
                    scalar_value = "chips_gain",
                    message_colour = G.C.ATTENTION
                })
                return {
                    remove = true }
            end
        end
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end
    end
}

-- thanks to able for the code
