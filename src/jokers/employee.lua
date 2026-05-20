SMODS.Joker {
    key = 'employee',
    atlas = 'jokers',
    pos = {
        x = 4,
        y = 0
    },
    config = {
        extra = {
            xmult = 1,
            scalar = 0.1
        },
    },
    rarity = 3,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.xmult,
                card.ability.extra.scalar
            }
        }
    end,
    calculate = function(self, card, context)
        if context.money_altered and context.from_shop then
            SMODS.scale_card(card, {
                ref_table = card.ability.extra,
                ref_value = "xmult",
                scalar_value = "scalar",
                message_colour = G.C.ATTENTION
            })
        end
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult
            }
        end
    end }

-- First Attempt at a scaler
