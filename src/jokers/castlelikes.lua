-- Castle VRemade, but Mult?!?
SMODS.Joker {
    key = "hikingspot",
    atlas = "jokers",
    blueprint_compat = true,
    perishable_compat = false,
    rarity = 2,
    cost = 7,
    pos = { x = 0, y = 1 },
    config = { extra = { mult = 0, scaela = 1 } },
    loc_vars = function(self, info_queue, card)
        local suit = G.GAME.current_round.inkybot_hikingspot_suit or 'Spades'
        return { vars = { card.ability.extra.scaela, localize(suit, 'suits_singular'), card.ability.extra.mult, colours = { G.C.SUITS[suit] } } }
    end,
    calculate = function(self, card, context)
        if context.discard and not context.blueprint and not context.other_card.debuff and
            context.other_card:is_suit(G.GAME.current_round.inkybot_hikingspot_suit) then
            SMODS.scale_card(card, {
                ref_table = card.ability.extra,
                ref_value = "mult",
                scalar_value = "scaela",
                message_colour = G.C.ATTENTION
            })
        end
        if context.joker_main then
            return {
                mult = card.ability.extra.mult
            }
        end
    end
}
local function reset_castle_card()
    local valid_castle_cards = {}
    for _, playing_card in ipairs(G.playing_cards) do
        if not SMODS.has_no_suit(playing_card) then
            valid_castle_cards[#valid_castle_cards + 1] = playing_card
        end
    end
    local castle_card = pseudorandom_element(valid_castle_cards,
        'hikingspot' .. G.GAME.round_resets.ante)
    if castle_card then
        G.GAME.current_round.inkybot_hikingspot_suit = castle_card.base.suit
    end
end

function SMODS.current_mod.reset_game_globals(run_start)
    reset_castle_card()
end

-- HOW THE FUCK DO YOU REMAKE CASTLE?!?
-- hi 3 minutes ago me, turns out you can't rename castle_card to hiking_card, dumbass.
-- hi you, this is how you do it me thinks (AllUniversal)
