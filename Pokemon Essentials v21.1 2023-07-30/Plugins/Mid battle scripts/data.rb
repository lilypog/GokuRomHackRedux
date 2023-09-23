#DON'T DELETE THIS LINE
module DialogueModule


# Format to add new stuff here
# Name = data
#
# To set in a script command
# BattleScripting.setInScript("condition",:Name)
# The ":" is important

#  Joey_TurnStart0 = {"text"=>"Hello","bar"=>true}
#  BattleScripting.set("turnStart0",:Joey_TurnStart0)

                  
##############Custom#########################################################################################
##############General########################################################################################
  Init= Proc.new{|battle|
      battle.battlers[1].effects[PBEffects::BossProtect] = true
	  pbMessage("The opponent is immune to status moves and stat drop.")
      }
      
  Midlife= Proc.new{|battle|
      battle.pbAnimation(:HOWL,battle.battlers[1],battle.battlers[0])
      pbMessage(_INTL("{1} is starting to get mad!",battle.battlers[1].name))
      battle.battlers[0].pbResetStatStages
      battle.battlers[1].pbResetStatStages
      battle.battlers[1].pbRaiseStatStage(:ATTACK,1,battle.battlers[1])
      battle.battlers[1].pbRaiseStatStage(:SPECIAL_ATTACK,1,battle.battlers[1])
      }
  
  Quartlife=Proc.new{|battle|
      battle.pbAnimation(:HOWL,battle.battlers[1],battle.battlers[0])
      pbMessage(_INTL("{1} is in pain!",battle.battlers[1].name))
      battle.battlers[0].pbResetStatStages
      battle.battlers[1].pbResetStatStages
      battle.battlers[1].pbRaiseStatStage(:ATTACK,2,battle.battlers[1])
      battle.battlers[1].pbRaiseStatStage(:SPECIAL_ATTACK,2,battle.battlers[1])
      battle.battlers[0].pbLowerStatStage(:SPECIAL_ATTACK,2,battle.battlers[0])
      battle.battlers[0].pbLowerStatStage(:ATTACK,2,battle.battlers[0])
      }

  Enrage=Proc.new{|battle|
      battle.pbAnimation(:HOWL,battle.battlers[1],battle.battlers[0])
      pbMessage(_INTL("{1} rages!",battle.battlers[1].name))
      battle.battlers[0].pbResetStatStages
      battle.battlers[1].pbResetStatStages
      battle.battlers[1].pbRaiseStatStage(:SPECIAL_ATTACK,6,battle.battlers[1])
      battle.battlers[1].pbRaiseStatStage(:ATTACK,6,battle.battlers[1])
      battle.battlers[1].pbRaiseStatStage(:SPEED,6,battle.battlers[1])
      }

##############Test########################################"
	Tform=Proc.new{|battle|
		battle.scene.appearBar
		battle.pbCommonAnimation("MegaEvolution",battle.battlers[1],nil)
		battle.battlers[1].pbChangeForm(1,"blablabla")
		battle.battlers[1].name="BIG BOY" #if you need to change their name, you can
		pbMessage("The boss reached their final form!")
		battle.scene.pbRefresh
		battle.scene.disappearBar
		}
	Tcall=Proc.new{|battle|
		battle.pbCallForHelp(battle.battlers[1])
		}
		
################# Philippe Scripts ###################
    TheBoys=Proc.new{|battle|
        battle.scene.pbShowOpponent(0,true)
        pbMessage("THE BOYS!")
        battle.scene.pbHideOpponent
        }
# DONT DELETE THIS END
end