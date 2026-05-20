return {
    descriptions = {
        Joker = {
            j_inkybot_testjoker = {
                name = 'Cylindrical Joker',
                text = {
                    '{C:chips}+#1#{} Chips',
                    'if this joker fits',
                    'in the square hole'
                }
            },
            j_inkybot_mermaid = {
                name = 'Mermaid',
                text = {
                    {
                        'Gives {C:money}$1{} for each',
                        'Scoring {C:clubs}Clubs{} card'
                    }, {
                    'Money Scales by {C:attention}#2#{}',
                    'every trigger',
                    '{C:inactive}(Resets at the end of round){}'
                }
                }
            },
            j_inkybot_receipt = {
                name = 'Receipt',
                text = {
                    {
                        'Does nothing',
                        'for now'
                    }, {
                    '{C:inactive}Get trolled{}',
                }
                }
            },
            j_inkybot_iccanobif = {
                name = 'Iccanobif',
                text = {
                    {
                        "Each played {C:attention}4{},",
                        "{C:attention}6{}, {C:attention}7{}, {C:attention}9{}, or {C:attention}10{} gives",
                        "{C:chips}+#1#{} Chips when scored",
                    }, {
                    '{C:inactive}(So... Fibonacci, but chips?){}',
                }
                }
            },
            j_inkybot_employee = {
                name = 'Employee',
                text = {
                    {
                        "Gain {X:mult,C:white}x#2#{} mult whenever",
                        "{C:gold}Money{} is spent on the shop",
                        "{C:inactive}(Currently{} {X:mult,C:white}x#1#{} {C:inactive}mult){}"
                    }
                }
            }
        }
    }
}
