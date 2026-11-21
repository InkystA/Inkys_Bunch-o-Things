SMODS.Joker {
    key = 'receipt',
    atlas = 'jokers',
    pos = {
        x = 2,
        y = 0
    },
    unlocked = true,
    discovered = false,
    blueprint_compat = false,
    extra_slots_used = -1,
    rarity = 3,
    cost = 10,
    add_to_deck = function(self, card, from_debuff)
        for _, v in ipairs(G.jokers.cards) do
            if (v.config.center.rarity == 1 or v.config.center.rarity == "Common") then
                v.ability.extra_slots_used = -1
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        for _, v in ipairs(G.jokers.cards) do
            if (v.config.center.rarity == 1 or v.config.center.rarity == "Common") then
                v.ability.extra_slots_used = 0
            end
        end
    end,
    calculate = function(self, card, context)
        if context.card_added or context.buying_card or context.modify_shop_card or context.modify_booster_card then
            if (context.card.config.center.rarity == 1 or context.card.config.center.rarity == "Common") then
                context.card.ability.extra_slots_used = -1
            end
        end
    end,
}
-- Credits to Feli for practically spoonfeeding me this code
-- why do i do this to myself its a fucking practice mod
