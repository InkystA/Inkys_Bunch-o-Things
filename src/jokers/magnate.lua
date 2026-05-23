SMODS.Joker {
    key = 'magnate',
    atlas = 'jokers',
    pos = {
        x = 5,
        y = 0
    },
    config = {
        extra = {
            xmult = 0.1,
        },
    },
    rarity = 3,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        return
        {
            vars =
            { card.ability.extra.xmult,
                card.ability.extra.xmult * math.max(0, (G.GAME.dollars or 0) + (G.GAME.dollar_buffer or 0))
            }
        }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult * math.max(0, (G.GAME.dollars + (G.GAME.dollar_buffer or 0)))
            }
        end
    end,
}
SMODS.JimboQuip({
    key = 'magnate_win',
    extra = {
        center = 'j_inkybot_magnate',
        particle_colours = {
            G.C.BLUE,
            G.C.WHITE,
            G.C.UI.TEXT_DARK }
    },
    filter = function(self, type)
        if type == 'win' then
            self.extra.text_key = self.key .. '_' .. math.random(1, 2, 3, 4)
            return true, { weight = 100 }
        end
    end
})
SMODS.JimboQuip({
    key = 'magnate_loss',
    extra = {
        center = 'j_inkybot_magnate',
        particle_colours = {
            G.C.RED,
            G.C.WHITE,
            G.C.UI.TEXT_DARK }
    },
    filter = function(self, type)
        if type == 'loss' then
            self.extra.text_key = self.key .. '_' .. math.random(1, 2, 3, 4)
            return true, { weight = 100 }
        end
    end
})
-- Jimboquipper
-- Shouout to DoggFly and AbelSketch for the code
