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
                    'What, you\'ll turn on Polterworx?'
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
