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
                        '{C:common}Common{} Jokers take up',
                        '{C:dark_edition}No joker slots{}'
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
            },
            j_inkybot_magnate = {
                name = 'Tycoon',
                text = {
                    {
                        "{X:mult,C:white}x#1#{} mult for each",
                        "{C:gold}$1{} you hold",
                        "{C:inactive}(Currently{} {X:mult,C:white}x#2#{} {C:inactive}mult){}"
                    }
                }
            },
            j_inkybot_hikingspot = {
                name = 'Hiking Spot',
                text = {
                    {
                        "This Joker gains {C:mult}+#1#{} Mult",
                        "per discarded {V:1}#2#{} card,",
                        "suit changes every round",
                        "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult)",
                    }, { "{C:inactive}wait a second, this is just Mult Castle!{}" }
                },
            },
            j_inkybot_raresuith = {
                name = 'Pink Slip',
                text = {
                    {
                        "Scored {C:hearts}#3#{} cards gain this joker {X:mult,C:white}x#2#{} mult",
                        "{C:inactive}(Currently{} {X:mult,C:white}x#1#{} {C:inactive}Mult){}",
                    }, { "Scored {C:hearts}#3#{} are {C:attention}destroyed{}" }
                }
            },
            j_inkybot_raresuitd = {
                name = 'Penalty Notice',
                text = {
                    {
                        "Scored {C:diamonds}#3#{} cards gain this joker {C:money}$#2#{} at the end of round",
                        "{C:inactive}(Currently{} {C:money}$#1#{} {C:inactive}){}",
                    }, { "Scored {C:diamonds}#3#{} are {C:attention}destroyed{}" }
                }
            },
            j_inkybot_raresuitc = {
                name = 'Cutoff Notice',
                text = {
                    {
                        "Scored {C:clubs}#3#{} cards gain this joker {C:mult}#2#{} mult",
                        "{C:inactive}(Currently{} {C:mult}#1#{} {C:inactive}Mult){}",
                    }, { "Scored {C:clubs}#3#{} are {C:attention}destroyed{}" }
                }
            },
            j_inkybot_raresuits = {
                name = 'Report Card',
                text = {
                    {
                        "Scored {C:spades}#3#{} cards gain this joker {C:chips}#2#{} chips",
                        "{C:inactive}(Currently{} {C:chips}#1#{} {C:inactive}Chips){}",
                    }, { "Scored {C:spades}#3#{} are {C:attention}destroyed{}" }
                }
            },
        },

        misc = {
            quips = {
                inkybot_magnate_win_1 = {
                    'Thought You Would Do Worse.'
                },
                inkybot_magnate_win_2 = {
                    "I can see your build",
                    'Anyone could\'ve won with that.'
                },
                inkybot_magnate_win_3 = {
                    'Just as a Reminder,',
                    'You still owe me that much.'
                },
                inkybot_magnate_win_4 = {
                    'Now that you\'ve won this run,',
                    'Try going outside and take a stroll.'

                },
                inkybot_magnate_loss_1 = {
                    'Isn\'t this your...',
                    '8th Losing Streak this week?'
                },
                inkybot_magnate_loss_2 = {
                    'What, you\'ll turn on Cryptid?',
                    'You\'re on white stake.'
                },
                inkybot_magnate_loss_3 = {
                    'I made a bet with Micheal about',
                    'This Specific Outcome...'
                },
                inkybot_magnate_loss_4 = {
                    'I\'ll tell Clyde about this.',
                    'Maybe even Rob...'
                },
            },
        }
    }
}
