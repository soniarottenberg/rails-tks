module ApplicationHelper
  def damage(fighter1, fighter2)
    damage1 = fighter1.attack - fighter2.defense
    fighter2.health = fighter2.health - damage1
    fighter2.write_attribute(:health, "#{fighter2.health}")
    status1 = "#{fighter1.name} attacks. #{fighter2.name} health is now #{fighter2.health}."

    damage2 = fighter2.attack - fighter1.defense
    fighter1.health = fighter1.health - damage2
    fighter1.write_attribute(:health, "#{fighter1.health}")
    status2 = "#{fighter2.name} attacks. #{fighter1.name} health is now #{fighter1.health}."

    return status1 + status2 + alive(fighter1, fighter2)
  end

  def alive(fighter1, fighter2)
    if fighter1.health <= 0
      "#{fighter1.name} has no HPs left... #{fighter2.name} is the winner !"
    elsif fighter2.health <= 0
      "#{fighter2.name} has no HPs left... #{fighter1.name} is the winner !"
    else
      damage(fighter1, fighter2)
    end
  end
end
